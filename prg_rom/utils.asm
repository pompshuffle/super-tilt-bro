fetch_controllers:
.(
; Fetch controllers state
lda #$01
sta CONTROLLER_A
lda #$00
sta CONTROLLER_A

; x will contain the controller number to fetch (0 or 1)
ldx #$00

fetch_one_controller:

; Reset the controller's byte
lda #$00
sta controller_a_btns, x

; Fetch the controller's byte button by button
ldy #$08
next_btn:
lda CONTROLLER_A, x
lsr
rol controller_a_btns, x
dey
bne next_btn

; Next controller
inx
cpx #$02
bne fetch_one_controller

rts
.)

wait_next_frame:
.(
lda #$01
sta nmi_processing
waiting:
lda nmi_processing
bne waiting
rts
.)

; Add a vector to the player's velocity
;  X - player number
;  Stack#0 - Y component of the vector to add
;  Stack#1 - X component of the vector to add
add_to_player_velocity:
.(
; Save the return address
pla
sta tmpfield1
pla
sta tmpfield2

; Count iterations, one per vector's component
ldy #$00

add_component:

; Add the component to the player's velocity
pla
clc
adc player_a_velocity_v, x
sta player_a_velocity_v, x

; Handle next component
inx
inx
iny
cpy #$02
bne add_component
dex
dex
dex
dex

; Restore return addr on stack and return
lda tmpfield2
pha
lda tmpfield1
pha
rts
.)

; Change the player's velocity to be closer to a vector
;  X - player number
;  tmpfield1 - Y component of the vector to merge
;  tmpfield2 - X component of the vector to merge
;
; Overwrites tmpfield3
merge_to_player_velocity:
.(
merged_components = tmpfield1

; Count iterations, one per vector's component
ldy #$00

add_component:

; Compare the merged vector to the current velocity
lda player_a_velocity_v, x
cmp merged_components, y
beq next_component
sta tmpfield3
lda merged_components, y
jsr signed_cmp
bmi decrement

inc player_a_velocity_v, x
jmp next_component

decrement:
dec player_a_velocity_v, x

; Handle next component
next_component:
inx
inx
iny
cpy #$02
bne add_component
dex
dex
dex
dex

rts
.)

; Perform signed comparison
;  register A - a
;  tmpfield3 - b
;
; Output - N flag set if "a < b", unset otherwise
; Overwrites register A
signed_cmp:
.(
; Trick from http://www.6502.org/tutorials/compare_beyond.html#5
sec
sbc tmpfield3
bvc end
eor #%10000000
end:
rts
.)

; Change A to it's absolute unsigned value
absolute_a:
.(
cmp #$00
bpl end
eor #%11111111
clc
adc #$01

end:
rts
.)

; Multiply tmpfield1 by tmpfield2 in tmpfield3
;  tmpfield1 - multiplicand
;  tmpfield2 - multiplier
;  Result stored in tmpfield3
;
;  Overwrites register A and tmpfield3
multiply:
.(
multiplicand = tmpfield1
multiplier = tmpfield2
result = tmpfield3

; Save X, we do not want it to be altered by this subroutine
txa
pha

; Set multiplier to X to be used as a loop count
lda multiplier
tax

; Store current result in A
lda #$00

additions_loop:
; Check if we finished
cpx #$00
beq end

; Add multiplicand to the result
clc
adc multiplicand

; Iterate until we looped "multiplier" times
dex
jmp additions_loop

end:
; Save result
sta result

; Restore X
pla
tax

rts
.)

; Set register X to the offset of the continuation byte of the first empty
; nametable buffer
;
; Overwrites register A
last_nt_buffer:
.(
ldx #$00

handle_buff:

; Check continuation byte
lda nametable_buffers, x
beq end

; Point to the tiles counter
inx
inx
inx

; Add tile counts to X (effectively points on the last tile)
txa
clc
adc nametable_buffers, x
tax

; Next
inx
jmp handle_buff

end:
rts
.)

; Produce a list of three tile indexes representing a number
;  tmpfield1 - Number to represent
;  tmpfield2 - Destination address LSB
;  tmpfield3 - Destionation address MSB
;
;  Overwrites timfield1, timpfield2, tmpfield3, tmpfield4, tmpfield5, tmpfield6
;  and all registers.
number_to_tile_indexes:
.(
number = tmpfield1
destination = tmpfield2
coefficient = tmpfield4
digit_value = tmpfield5
next_multiple = tmpfield6

; Start with a coefficient of 100 to find hundred's digit
lda #100
sta coefficient

find_one_digit:

; Reset internal counters
lda #$00
sta digit_value
lda coefficient
sta next_multiple

try_digit_value:

; Check if next multiple value is greater than the number
lda number
cmp next_multiple
bcs next_digit_value

; Next multiple value is greater than the number, we found this digit
lda TILENUM_NT_CHAR_0 ; Store the corresponding tile number at destination
clc                   ;
adc digit_value       ;
ldy #$00              ;
sta (destination), y  ;

                      ; Keep only the modulo in number
lda next_multiple     ; -.
sec                   ;  | Remove one time coefficient to next_multiple, so
sbc coefficient       ;  | next_multiple equals to "digit_value * coefficient"
sta next_multiple     ; -*
lda number            ; -.
sec                   ;  | "number = number - (digit_value * coefficient)"
sbc next_multiple     ;  | That's actually the modulo of "number / coefficient"
sta number            ; -*

lda coefficient        ; Set next coefficient
cmp #100               ;  100 -> 10
bne test_coeff_10      ;   10 ->  1
lda #10                ;    1 -> we found the last digit
sta coefficient        ;
jmp coefficent_changed ;
test_coeff_10:         ;
cmp #10                ;
bne end                ;
lda #1                 ;
sta coefficient        ;
jmp coefficent_changed ;
coefficent_changed:    ;

inc destination         ; Update destination address
bne destination_updated ;
inc destination+1       ;
destination_updated:    ;

jmp find_one_digit

; Next multiple value is lower or equal to the number,
; increase digit value, update next_multiple and recheck
next_digit_value:
inc digit_value
lda next_multiple
clc
adc coefficient
sta next_multiple
jmp try_digit_value

end:
rts
.)
