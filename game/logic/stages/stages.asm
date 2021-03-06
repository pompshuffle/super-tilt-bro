stage_elements_size:
.byt STAGE_PLATFORM_LENGTH, STAGE_SMOOTH_PLATFORM_LENGTH, STAGE_OOS_PLATFORM_LENGTH, STAGE_OOS_SMOOTH_PLATFORM_LENGTH

; Code common to most stage initialization
;
; Overwrites all registers, tmpfield1, tmpfield2 and tmpfield15
stage_generic_init:
.(
	stage_table_index = tmpfield15
	element_length = tmpfield15 ; warning reuse, take care of not mixing usages

	; Point stage_table_index to the byte offset of selected stage entry in vector tables
	lda config_selected_stage
	asl
	sta stage_table_index

	; Write palette_data in actual ppu palettes
	bit PPUSTATUS     ;
	lda #$80          ; Wait the begining of a VBI before
	wait_vbi:         ; writing data to PPU's palettes
		bit PPUSTATUS ;
		beq wait_vbi  ;

	lda PPUSTATUS ;
	lda #$3f      ; Point PPU to Background palette 0
	sta PPUADDR   ; (see http://wiki.nesdev.com/w/index.php/PPU_palettes)
	lda #$00      ;
	sta PPUADDR   ;

	ldx stage_table_index   ;
	lda stage_palettes, x   ;
	sta tmpfield1           ;
	lda stage_palettes+1, x ;
	sta tmpfield2           ;
	ldy #0                  ; Write palette_data in actual ppu palettes
	copy_palette:           ;
		lda (tmpfield1), y  ;
		sta PPUDATA         ;
		iny                 ;
		cpy #$20            ;
		bne copy_palette    ;

	; Copy background from PRG-rom to PPU nametable
	ldx stage_table_index
	lda stages_nametable, x
	sta tmpfield1
	lda stages_nametable+1, x
	sta tmpfield2
	jsr draw_zipped_nametable

	; Copy stage data to its fixed location
	ldx stage_table_index
	lda stages_data, x
	sta tmpfield1
	lda stages_data+1, x
	sta tmpfield2

	ldx #0
	ldy #0
	copy_header_loop:
	lda (tmpfield1), y
	sta stage_data, x
	inx
	iny
	cpy #STAGE_OFFSET_ELEMENTS
	bne copy_header_loop

	copy_elements_loop:
		; Copy element header and retrieve element length
		txa
		pha

		lda (tmpfield1), y
		sta stage_data, x
		beq copy_data_end

		tax
		dex
		lda stage_elements_size, x
		sta element_length
		dec element_length

		pla
		tax
		iny
		inx

		; Copy element
		copy_one_element:
			lda (tmpfield1), y
			sta stage_data, x
			iny
			inx
			dec element_length
			bne copy_one_element
		jmp copy_elements_loop

		copy_data_end:
		pla

	rts
.)

; Call a subroutine for each element of the current stage plus player handled elements
;  tmpfield1, tmpfield2 - subroutine to call
;
;  Overwrites register A and register Y.
;
; For each call, the element can be accessed at address
; "stage_data, y"
;
; Called subroutine can stop the iteration by setting Y to $ff, else
; it must not modify the Y register.
;
; Called subroutine must not modify tmpfield1 nor tmpfield2.
stage_iterate_all_elements:
.(
	ldy #STAGE_OFFSET_ELEMENTS
	jsr stage_iterate_elements
	cpy #$ff
	beq end

#if player_a_objects < stage_data
#error following code assumes player_a_objects to be after stage data for less than 255 bytes
#endif
#if player_a_objects-stage_data > 255
#error following code assumes player_a_objects to be after stage data for less than 255 bytes
#endif
	ldy #player_a_objects-stage_data
	jsr stage_iterate_elements
	cpy #$ff
	beq end

#if player_b_objects < stage_data
#error following code assumes player_a_objects to be after stage data for less than 255 bytes
#endif
#if player_b_objects-stage_data > 255
#error following code assumes player_a_objects to be after stage data for less than 255 bytes
#endif
	ldy #player_b_objects-stage_data
	jsr stage_iterate_elements
	cpy #$ff ; TODO investigate - if no code checks Z flag after calling this routine, then this instruction is unecessary
	;beq end ; useless - fallthrough

	end:
	rts
.)

; Call a subroutine for each element of the current stage
;  tmpfield1, tmpfield2 - subroutine to call
;  register Y - offset of the first element from "stage_data"
;
;  Overwrites register A and register Y.
;
; For each call, the element can be accessed at address
; "stage_data, y"
;
; Called subroutine can stop the iteration by setting Y to $ff, else
; it must not modify the Y register.
;
; Called subroutine must not modify tmpfield1 nor tmpfield2.
stage_iterate_elements:
.(
	check_current_element:
	lda stage_data, y
	beq end

		; Call element handler
		jsr call_pointed_subroutine
		cpy #$ff
		beq end

		; Save X (stage_iterate_elements is not allowed to modify it)
		txa
		pha

		; Find element's size index
		lda stage_data, y
		tax
		dex

		; Add element's size to Y
		tya
		clc
		adc stage_elements_size, x
		tay

		; Restore X
		pla
		tax

		; Handle next element
		jmp check_current_element

	end:
	rts
.)
