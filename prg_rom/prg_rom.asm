* = $C000 ; $C000 is where the PRG rom is mapped in CPU space, so code position is relative to it

palette_data:
.db $25,$02,$16,$2a,$25,$35,$36,$37,$25,$39,$3A,$3B,$25,$00,$10,$30
.db $25,$1C,$15,$14,$25,$02,$38,$3C,$25,$1C,$15,$14,$25,$02,$38,$3C

sprites:
;;  Y    tile attr X
.db $80, $00, $00, $80
.db $80, $01, $00, $88
.db $88, $02, $00, $80
.db $88, $03, $00, $88

nametable:
.byt $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
.byt $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
.byt $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
.byt $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
.byt $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00
.byt $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
nametable_attributes:
.byt %11101010, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
.byt %00000000, %00000000, %00000000, %00000000
nametable_end:

#include "prg_rom/utils.asm"

cursed:
rti

nmi:
; Save CPU registers
php
pha
txa
pha
tya
pha

; reload PPU OAM (Objects Attributes Memory) with frash data from cpu memory
lda #$00
sta OAMADDR
lda #$02
sta OAMDMA

; no scroll
lda #$00
sta PPUSCROLL
sta PPUSCROLL

; Inform that NMI is handled
lda #$00
sta nmi_processing

; Restore CPU registers
pla
tay
pla
tax
pla
plp

rti

reset:

sei               ; disable IRQs
cld               ; disable decimal mode
ldx #$40
stx APU_FRAMECNT  ; disable APU frame IRQ
ldx #$FF
txs               ; Set up stack
inx               ; now X = 0
stx PPUCTRL       ; disable NMI
stx PPUMASK       ; disable rendering
stx APU_DMC_FLAGS ; disable DMC IRQs

vblankwait1:       ; First wait for vblank to make sure PPU is ready
bit PPUSTATUS
bpl vblankwait1

clrmem:
lda #$00
sta $0000, x
sta $0100, x
sta $0300, x
sta $0400, x
sta $0500, x
sta $0600, x
sta $0700, x
lda #$FE
sta $0200, x    ;move all sprites off screen
inx
bne clrmem

vblankwait2:      ; Second wait for vblank, PPU is ready after this
bit PPUSTATUS
bpl vblankwait2

; Point PPU to Background palette 0 (see http://wiki.nesdev.com/w/index.php/PPU_palettes)
lda PPUSTATUS
lda #$3f
sta PPUADDR
lda #$00
sta PPUADDR

; Write palette_data in actual ppu palettes
ldx $00
copy_palette:
lda palette_data, x
sta PPUDATA
inx
cpx #$20
bne copy_palette

; Initialize sprites in CPU memory
ldx #$00
load_sprite:
lda sprites, x
sta $0200, x
inx
cpx #4*4
bne load_sprite

; Copy background from PRG-rom to PPU nametable
lda #<nametable
sta $40
lda #>nametable
sta $41
lda PPUSTATUS
lda #$20
sta PPUADDR
lda #$00
sta PPUADDR
ldy #$00
load_background:
lda ($40), y
sta PPUDATA
inc $40
bne end_inc_vector
inc $41
end_inc_vector:
lda #<nametable_end
cmp $40
bne load_background
lda #>nametable_end
cmp $41
bne load_background

jsr init_game_state
jsr update_sprites

; Setup PPU
lda #%10010000
sta PPUCTRL
lda #%00011110
sta PPUMASK

forever:

jsr wait_next_frame
jsr fetch_controllers
jsr update_players
jsr update_sprites

jmp forever

;
; Fill code bank and set entry points vectors (also from nesmine)
;

#if $fffa-* < 0
#echo *** Error: Code occupies too much space
#else
.dsb $fffa-*, 0     ;aligning
.word nmi           ;entry point for VBlank interrupt  (NMI)
.word reset         ;entry point for program start     (RESET)
.word cursed        ;entry point for masking interrupt (IRQ)
#endif
