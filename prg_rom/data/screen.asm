palette_data:
; Background
.byt $21,$2a,$1a,$08, $21,$1b,$18,$0a, $21,$08,$18,$38, $21,$20,$1c,$0c
; Sprites
.byt $21,$08,$1a,$20, $21,$08,$10,$37, $21,$08,$16,$10, $21,$08,$28,$37

palette_title:
; Background
.byt $21,$0d,$21,$30, $21,$00,$21,$00, $21,$00,$21,$00, $21,$20,$1c,$0c
; Sprites
.byt $21,$00,$00,$00, $21,$00,$00,$00, $21,$00,$00,$00, $21,$00,$00,$00

palette_gameover:
; Background
.byt $21,$2a,$1a,$08, $21,$0d,$0a,$10, $21,$08,$18,$38, $21,$20,$1c,$0c
; Sprites
.byt $21,$08,$1a,$20, $21,$08,$10,$37, $21,$08,$16,$10, $21,$08,$28,$37

palette_config:
; Background
.byt $21,$0d,$20,$20, $21,$20,$0d,$00, $21,$0d,$28,$28, $21,$0d,$20,$10
; Sprites
.byt $21,$00,$00,$00, $21,$28,$00,$00, $21,$00,$00,$00, $21,$00,$00,$00

palette_stage_selection:
; Background
.byt $21,$0d,$12,$00, $21,$00,$00,$00, $21,$0d,$28,$00, $21,$0d,$20,$10
; Sprites
.byt $21,$0d,$0d,$21, $21,$08,$19,$21, $21,$00,$00,$00, $21,$00,$00,$00

palette_character_selection:
; Background
.byt $21,$20,$12,$00, $21,$28,$12,$00, $21,$2a,$1a,$08, $21,$0d,$20,$10
; Sprites
.byt $21,$00,$00,$00, $21,$00,$00,$00, $21,$00,$00,$00, $21,$00,$00,$00

#define ZIPNT_ZEROS(n) $00, n
#define ZIPZ $00, $01
#define ZIPNT_END $00, $00

nametable:
.byt ZIPNT_ZEROS(128+20)

.byt                                                                                                          $2b, $2c, $2d, $2e
.byt ZIPNT_ZEROS(8+20)
.byt                                                                                                          $2f, $30, $31, $32
.byt ZIPNT_ZEROS(8+32+26)
.byt                                                                                                                                         $2b, $2c,  $2d, $2e

.byt ZIPNT_ZEROS(2+2)
.byt           $2b, $2c,  $2d, $2e, ZIPNT_ZEROS(20),                                                                                         $2f, $30,  $31, $32
.byt ZIPNT_ZEROS(2+2)
.byt           $2f, $30,  $31, $32

.byt ZIPNT_ZEROS(26+128+12),
.byt                                                                $04, $05, $06, $07
.byt ZIPNT_ZEROS(16+12),
.byt                                                                $08, $09, $0a, $0b
.byt ZIPNT_ZEROS(16+12),

.byt                                                                $0c, $0d, $0e, $0f
.byt ZIPNT_ZEROS(16+5)
.byt                           $23, $24, $23,  $24, $23, $24, $23,  $10, $11, $12, $13,  $24, $23, $24, $23,  $24, $23, $24, $23,  $24, $23, $24
.byt ZIPNT_ZEROS(5+5)
.byt                           $25, $26, $25,  $26, $25, $26, $25,  $26, $25, $26, $25,  $26, $25, $26, $25,  $26, $25, $26, $25,  $26, $25, $26
.byt ZIPNT_ZEROS(5+5)
.byt                           $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03
.byt ZIPNT_ZEROS(5+5)

.byt                           $1f, $20, $01,  $01, $01, $01, $01,  $01, $01, $01, $1f,  $20, $01, $01, $01,  $33, $34, $01, $01,  $01, $01, $01
.byt ZIPNT_ZEROS(5+5)
.byt                           $21, $22, $33,  $34, $01, $01, $1f,  $20, $01, $01, $21,  $22, $01, $01, $01,  $35, $36, $01, $01,  $01, $33, $34
.byt ZIPNT_ZEROS(5+5)
.byt                           $01, $01, $35,  $36, $01, $01, $21,  $22, $01, $01, $01,  $01, $1f, $20, $01,  $01, $1f, $20, $01,  $01, $35, $36
.byt ZIPNT_ZEROS(5+5)
.byt                           $01, $01, $01,  $33, $34, $01, $01,  $01, $01, $01, $01,  $01, $21, $22, $01,  $01, $21, $22, $01,  $01, $01, $01
.byt ZIPNT_ZEROS(5+5)

.byt                           $01, $01, $01,  $35, $36, $1f, $20,  $01, $01, $01, $01,  $01, $01, $01, $01,  $33, $34, $01, $1f,  $20, $01, $01
.byt ZIPNT_ZEROS(5+5)
.byt                           $01, $01, $01,  $01, $01, $21, $22,  $01, $01, $1f, $20,  $01, $01, $01, $01,  $35, $36, $01, $21,  $22, $01, $01
.byt ZIPNT_ZEROS(5+5)
.byt                           $01, $33, $34,  $01, $27, $28, $01,  $01, $01, $21, $22,  $01, $01, $01, $01,  $01, $27, $28, $01,  $01, $01, $01
.byt ZIPNT_ZEROS(5+5)
.byt                           $01, $35, $36,  $01, $29, $2a, $01,  $01, $01, $01, $01,  $1f, $20, $01, $01,  $01, $29, $2a, $01,  $1f, $20, $01
.byt ZIPNT_ZEROS(5+5)

.byt                           $01, $01, $01,  $14, $14, $14, $1e,  $01, $01, $01, $01,  $21, $22, $01, $01,  $14, $14, $14, $1e,  $21, $22, $01
.byt ZIPNT_ZEROS(5+5)
.byt                           $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, ZIPNT_ZEROS(5)
nametable_attributes:
.byt ZIPNT_ZEROS(8+2)
.byt                       %11111111, ZIPNT_ZEROS(2),       %11111111, %11111111, %11111111
.byt %11111111, %11111111, ZIPNT_ZEROS(4),                             %11111111, %11111111
.byt ZIPNT_ZEROS(3),                  %01010000
.byt ZIPNT_ZEROS(7)
.byt                                  %00000101
.byt ZIPNT_ZEROS(5)
.byt            %10101010, %10101010, %10101010, %10101010, %10101010, %10101010
.byt ZIPNT_ZEROS(2)
.byt            %10101010, %10101010, %10101010, %10101010, %10101010, %10101010
.byt ZIPNT_ZEROS(2)
.byt            %10101010, %10101010, %10101010, %10101010, %10101010, %10101010, ZIPNT_ZEROS(1)
nametable_end:
.byt ZIPNT_END

nametable_stage_pit:
.byt ZIPNT_ZEROS(32+32+32+3)
.byt                $2b,  $2c, $2d, $2e, ZIPNT_ZEROS(25+3)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt                $2f,  $30, $31, $32
.byt ZIPNT_ZEROS(25+32+24)
.byt                                                                                                                               $2b, $2c, $2d, $2e, ZIPNT_ZEROS(4+24)
.byt                                                                                                                               $2f, $30, $31, $32
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt ZIPNT_ZEROS(4+32+32+32+8)
.byt                                           $2b, $2c, $2d, $2e, ZIPNT_ZEROS(20+8)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt                                           $2f, $30, $31, $32
.byt ZIPNT_ZEROS(20+32+32+32+32)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt $23, $24, $23, $24,  $23, $24, $23, $24,  ZIPNT_ZEROS(16),                                                                    $23, $24, $23, $24,  $23, $24, $23, $24
.byt $25, $26, $25, $26,  $25, $26, $25, $26,  ZIPNT_ZEROS(16),                                                                    $25, $26, $25, $26,  $25, $26, $25, $26
.byt $03, $03, $03, $03,  $03, $03, $03, $03,  ZIPNT_ZEROS(16),                                                                    $03, $03, $03, $03,  $03, $03, $03, $03
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt $01, $01, $01, $33,  $34, $01, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $01, $01,  $01, $01, $01, $01
.byt $01, $01, $01, $35,  $36, $01, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $01, $01,  $01, $1f, $20, $01
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $01, $01,  $01, $21, $22, $01
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $01, $01,  $01, $01, $01, $01
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $33, $34,  $01, $01, $01, $01
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $35, $36,  $01, $01, $01, $01
.byt $01, $1f, $20, $01,  $01, $01, $01, $01,$00,$01,$27,$28, ZIPNT_ZEROS(10),                                     $27, $28,$00,$01,$01,$01, $01, $01,  $01, $01, $01, $01
.byt $01, $21, $22, $01,  $01, $01, $01, $01,$00,$01,$29,$2a, ZIPNT_ZEROS(10),                                     $29, $2a,$00,$01,$01,$01, $01, $01,  $01, $01, $01, $01
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  $1e, $1e, $1e, $1e,  ZIPNT_ZEROS(8),                           $1e, $1e, $1e, $1e,  $01, $01, $01, $01,  $01, $01, $01, $01
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $01, $01,  $01, $01, $01, $01
nametable_stage_pit_attributes:
.byt %11000000, %11110000, ZIPNT_ZEROS(6)
.byt %00001100, %00001111, ZIPNT_ZEROS(4),                             %11110000
.byt ZIPNT_ZEROS(1+2)
.byt                       %11110000
.byt ZIPNT_ZEROS(5+2)
.byt                       %00001111
.byt ZIPNT_ZEROS(5+8)
.byt %10101010, %10101010,               ZIPNT_ZEROS(4),               %10101010, %10101010
.byt %10101010, %10101010, %10100000,    ZIPNT_ZEROS(2),    %10100000, %10101010, %10101010
.byt %00001010, %00001010, %00001010,    ZIPNT_ZEROS(2),    %00001010, %00001010, %00001010
nametable_stage_pit_end:
.byt ZIPNT_END

nametable_stage_shelf:
.byt ZIPNT_ZEROS(32*2+24)
.byt                                                                                                                               $2b, $2c,  $2d, $2e
.byt ZIPNT_ZEROS(4+24)
.byt                                                                                                                               $2f, $30,  $31, $32
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt ZIPNT_ZEROS(4+32*4+4)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt                      $2b, $2c,  $2d, $2e
.byt ZIPNT_ZEROS(24+4)
.byt                      $2f, $30,  $31, $32
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt ZIPNT_ZEROS(24+32*2+10)
.byt                                                     $e8, $e8,  $e8, $e8, $e8, $e8,  $e8, $e8, $e8, $e8,  $e8, $e8
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt ZIPNT_ZEROS(10+32*5+4)
.byt                      $e8, $e8, $e8, $e8,  $e8, $e8, $e8, $e8,  $e8, ZIPNT_ZEROS(6),                $e8,  $e8, $e8, $e8, $e8,  $e8, $e8, $e8, $e8
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt ZIPNT_ZEROS(4+32+18)
.byt                                                                                               $04, $05,  $06, $07
.byt ZIPNT_ZEROS(10+18)
.byt                                                                                               $08, $09,  $0a, $0b
.byt ZIPNT_ZEROS(10+18)
.byt                                                                                               $0c, $0d,  $0e, $0f
.byt ZIPNT_ZEROS(10+6)
.byt                                $23, $24,  $23, $24, $23, $24,  $23, $24, $23, $24,  $23, $24, $10, $11,  $12, $13, $23, $24,  $23, $24
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt ZIPNT_ZEROS(6+6)
.byt                                $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26
.byt ZIPNT_ZEROS(6+6)
.byt                                $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03
.byt ZIPNT_ZEROS(6+6)
.byt                                $01, $01,  $01, $27, $28, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $27, $28, $01,  $01, $01
.byt ZIPNT_ZEROS(6+6)
.byt                                $01, $01,  $01, $29, $2a, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $29, $2a, $01,  $01, $01
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------
.byt ZIPNT_ZEROS(6+6)
.byt                                $01, $01,  $14, $14, $14, $1e,  $01, $01, $01, $01,  $01, $01, $01, $01,  $14, $14, $14, $1e,  $01, $01
.byt ZIPNT_ZEROS(6+6)
.byt                                $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01
.byt ZIPNT_ZEROS(6)
nametable_stage_shelf_attributes:
.byt ZIPNT_ZEROS(6),                                                   %11110000
.byt ZIPNT_ZEROS(1+8+1)
.byt            %00001111
.byt ZIPNT_ZEROS(6+8+8+4)
.byt                                             %01000100, %00010001, %00000101, %00001100
.byt %10000000, %10000000, %10100000, %10100000, %10100000, %10100000, %10100000
.byt ZIPNT_ZEROS(1+1)
.byt            %10101010, %10101010, %10101010, %10101010, %10101010, %10101010, %10000000
nametablei_stage_shelf_end:
.byt ZIPNT_END

nametable_title:
.byt ZIPNT_ZEROS(64+10)
.byt                                                     $51, $52,  $53, ZIPNT_ZEROS(11),                                          $2b, $2c, $2d, $2e
.byt ZIPNT_ZEROS(4+9)
.byt                                                $54, $55, $56,  $57, $58, $59, $5a,  $5b, $5c, $5d, $5e,  $5f, $60, $61,ZIPZ,  $2f, $30, $31, $32
.byt ZIPNT_ZEROS(4+9)

.byt                                                $62, $63, $64,  $65, $66, $67, $68,  $69, $6a, $6b, $6c,  $6d, $6e, $6f
.byt ZIPNT_ZEROS(9+9)
.byt                                                $70, $71, $72,  $73, $74, $75, $76,  $77, $78, $79, $7a,  $7b, $7c, $7d
.byt ZIPNT_ZEROS(9+2)
.byt           $2b, $2c,  $2d, $2e, ZIPNT_ZEROS(3), $7e, $7f, $80,  $81, $82, $83, $84,  $85, $86, $87, $88,  $89, $8a, $8b
.byt ZIPNT_ZEROS(9+2)
.byt           $2f, $30,  $31, $32, $8c, $8d,  $8d, $8e, ZIPNT_ZEROS(6),                 $8f, $90, $91, $92
.byt ZIPNT_ZEROS(12+6)

.byt                                $93, $94,  $95, $96, $97, $98,  $99, $9a, $9b, $9c,  $9d, $95, $9e, $9f,  $a0, $a1, $a2, $a3,  $a4
.byt ZIPNT_ZEROS(7+7)
.byt                                     $a5,  $a6, $a7, $a8, $a6,  $a9, $78, $aa, $ab,  $a5, $ac, $ad, $ae,  $af, $b0, $b1, $a7,  $b2
.byt ZIPNT_ZEROS(7+7)
.byt                                     $b3,  $a6, $a7, $a8, $a6,  $b4, $b5, $b6,ZIPZ,  $b3, $a6, $b7, $b8,  $b9, $ba, $bb, $bc,  $bd, $be
.byt ZIPNT_ZEROS(6+7)
.byt                                     $bf,  $c0, $c1, $c2, $c3,  $c4, $c5, $c6,ZIPZ,  $bf, $c3, $c7, $c8,  $c9, $ca, $cb, $cc,  $cd, $ce
.byt ZIPNT_ZEROS(6+12)

.byt                                                                $3c, $45, $48,ZIPNT_ZEROS(2),$44, $3b, $49,
.byt ZIPNT_ZEROS(12+38)
.byt                                $2b, $2c,  $2d, $2e
.byt ZIPNT_ZEROS(22+6)
.byt                                $2f, $30,  $31, $32
.byt ZIPNT_ZEROS(22+18)

.byt                                                                                               $2b, $2c,  $2d, $2e
.byt ZIPNT_ZEROS(10+18)
.byt                                                                                               $2f, $30,  $31, $32
.byt ZIPNT_ZEROS(10+26)
.byt                                                                                                                                         $2b, $2c,  $2d, $2e
.byt ZIPNT_ZEROS(2+26)
.byt                                                                                                                                         $2f, $30,  $31, $32
.byt ZIPNT_ZEROS(2+104)

.byt                                           $46, $48, $3b, $49,  $49,ZIPZ, $37, $44,  $4f,ZIPZ, $38, $4b,  $4a, $4a, $45, $44
.byt ZIPNT_ZEROS(8+68)

.byt                      $2b, $2c, $2d, $2e
.byt ZIPNT_ZEROS(24+4)
.byt                      $2f, $30, $31, $32,  ZIPNT_ZEROS(14),                                                         $38, $3b,  $4a, $37,$00,$01, $18
.byt ZIPNT_ZEROS(4+64+6)
nametable_title_attributes:
.byt                                                                   %11110000, ZIPZ
.byt %11000000, %00110000
.byt ZIPNT_ZEROS(6+8+1)
.byt            %11000000, %00110000
.byt ZIPNT_ZEROS(5+4)
.byt                                             %00001100, %00000011, %11000000, %00110000
.byt ZIPNT_ZEROS(8+1)
.byt            %11110000
.byt ZIPNT_ZEROS(6+8)
nametable_title_end:
.byt ZIPNT_END

nametable_gameover:
.byt ZIPNT_ZEROS(64+19)
.byt                                                                                                    $02,  $02, $4c, $3f, $39,  $4a, $45, $48, $4f,  $02, $02
.byt ZIPNT_ZEROS(2+19)
.byt                                                                                                    $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+4)

.byt                      $2b, $2c, $2d, $2e,  ZIPNT_ZEROS(11),
.byt                                                                                                    $46,  $42, $37, $4f, $3b,  $48, $02, ZIPNT_ZEROS(3), $02
.byt ZIPNT_ZEROS(2+4)
.byt                      $2f, $30, $31, $32
.byt ZIPNT_ZEROS(24+64+128)

.byt ZIPNT_ZEROS(128+6)

.byt                                $d0, $d1,  $d1, $d2, $d3, $d4,  $d5, $d6, $d7, $d8,  ZIPNT_ZEROS(16)

.byt $23, $24, $23, $24,  $23, $24, $d9, $da,  $db, $dc, $dd, $de,  $df, $e0, $e1, $e2,  $e3, $e4, $23, $24,  $23, $24, $23, $24,  $23, $24, $23, $24,  $23, $24, $23, $24
.byt $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26,  $25, $26, $25, $26
.byt $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03,  $03, $03, $03, $03

.byt $01, $01, $01, $01,  $01, $01, $1f, $20,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $1f, $20, $01, $01
.byt $01, $01, $01, $01,  $01, $01, $21, $22,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $1f, $20,  $01, $01, $01, $01,  $01, $01, $01, $01,  $21, $22, $01, $01
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $21, $22,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01

.byt $01, $01, $01, $01,  $01, $01, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $01, $01,  $01, $01, $01, $01
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  ZIPNT_ZEROS(2)
.byt                                                     $46, $48, $3b, $49, $49, $02, $02, $49, $4a, $37, $48, $4a,ZIPNT_ZEROS(2),$01, $01, $01, $01,  $01, $01, $01, $01
.byt $01, $01, $01, $01,  $1f, $20, $01, $01,  ZIPNT_ZEROS(16),                                                                    $01, $01, $1f, $20,  $01, $01, $01, $01
.byt $01, $01, $01, $01,  $21, $22, $01, $01,  $01, $01, $01, $01,  $1f, $20, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $21, $22,  $01, $01, $01, $01

.byt $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $21, $22, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01
.byt $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01,  $01, $01, $01, $01
nametable_gameover_attributes:
.byt ZIPNT_ZEROS(4),                             %11000000, %11111111, %11111111, %11111111
.byt ZIPZ,      %00001111, ZIPNT_ZEROS(2),       %00001100, %11111111, %11111111, %11111111
.byt ZIPNT_ZEROS(8+8+1)
.byt            %00000100, %00000101, %00000101, %00000001, ZIPNT_ZEROS(3)
.byt %10101010, %10101010, %10101010, %10101010, %10101010, %10101010, %10101010, %10101010
.byt %10101010, %10101010, %10101110, %10101111, %10101111, %10101111, %10101010, %10101010
.byt %10101010, %10101010, %10101010, %10101010, %10101010, %10101010, %10101010, %10101010
nametable_gameover_end:
.byt ZIPNT_END

nametable_config:
.byt ZIPNT_ZEROS(32+32+2)
.byt           $ed, $ee,  $02, $45, $46, $4a,  $3f, $45, $44, $49,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $ef, $f0
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(28+32+32+4)
.byt                      $e5, $02, $43, $4b,  $49, $3f, $39, $02,  $02, $02, $02, $02,  $02, $02, $e7, $01,  $02, $02, $02, $02,  $02, $02, $02, $e6
.byt ZIPNT_ZEROS(4+32)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(32+32+4)
.byt                      $e5, $02, $49, $4a,  $45, $39, $41, $49,  $02, $02, $02, $02,  $02, $02, $e7, $01,  $02, $02, $02, $02,  $02, $02, $02, $e6
.byt ZIPNT_ZEROS(4+32)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(32+32+4)
.byt                      $e5, $02, $46, $42,  $37, $4f, $3b, $48,  $02, $16, $02, $02,  $02, $02, $e7, $01,  $02, $02, $02, $02,  $02, $02, $02, $e6
.byt ZIPNT_ZEROS(4+32)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(32+32+32+32)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(32+32+32+32)
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(32+32+32+10)
.byt                                                     $46, $48,  $3b, $49, $49, $02,  $49, $4a, $37, $48,  $4a
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(11+32+32)
nametable_config_attributes:
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt ZIPNT_ZEROS(5)
.byt                                                        %01010000, %01010000
.byt ZIPNT_ZEROS(1+5)
.byt                                                        %01010000, %01010000
.byt ZIPNT_ZEROS(1+5)
.byt                                                        %01010000, %01010000
.byt ZIPNT_ZEROS(1+8+8+2)
.byt                       %11000000, %11110000, %11110000, %00110000
.byt ZIPNT_ZEROS(2+8)
nametable_config_end:
.byt ZIPNT_END

nametable_stage_selection:
.byt ZIPNT_ZEROS(32+32+2)
.byt           $e9, $ea,  $02, $49, $4a, $37,  $3d, $3b, $02, $49,  $3b, $42, $3b, $39,  $4a, $3f, $45, $44,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $eb, $ec
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(28+32+32+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $3c, $42, $37, $4a,  $42, $37, $44, $3a,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $4a, $3e, $3b, $02,  $46, $3f, $4a, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(2+32+32+32+32+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $49, $41, $4f, $02,  $48, $3f, $3a, $3b,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $4d, $3f,  $46, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, ZIPNT_ZEROS(4),      $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+32+10)
.byt                                                     $46, $48,  $3b, $49, $49, $02,  $49, $4a, $37, $48,  $4a
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(11+32+32)
nametable_stage_selection_attributes:
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt ZIPNT_ZEROS(8+8+8+8+8+2)
.byt                       %11000000, %11110000, %11110000, %00110000
.byt ZIPNT_ZEROS(2+8)
nametable_stage_selection_end:
.byt ZIPNT_END

nametable_character_selection:
.byt ZIPNT_ZEROS(32+32+2)
.byt           $f1, $f2,  $02, $39, $3e, $37,  $48, $37, $39, $4a,  $3b, $48, $02, $49,  $3b, $42, $3b, $39,  $4a, $3f, $45, $44,  $02, $02, $02, $02,  $02, $02
.byt ZIPNT_ZEROS(2+2)
.byt           $f3, $f4
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(28+32+32+32+3)
.byt                 $02, $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $00,$02,   $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $46, $42, $37, $4f,  $3b, $48, $02, $45,  $44, $3b, $02, $00,$02,   $02, $46, $42,  $37, $4f, $3b, $48,  $02, $4a, $4d, $45,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $00,$02,   $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02,          $00,$06,               $02, $02, $02, $00,$02,   $02, $02, $02,           $00,$06,              $02, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02,          $00,$06,               $02, $02, $02, $00,$02,   $02, $02, $02,           $00,$06,              $02, $02,  $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02, $23, $24,  $23, $24, $23, $24,  $02, $02, $02, $00,$02,   $02, $02, $02,  $23, $24, $23, $24,  $23, $24, $02, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02, $25, $26,  $25, $26, $25, $26,  $02, $02, $02, $00,$02,   $02, $02, $02,  $25, $26, $25, $26,  $25, $26, $02, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $00,$02,   $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $f5, $02, $02, $02,  $02, $02, $02, $02,  $02, $f6, $02, $00,$02,   $02, $f5, $02,  $02, $02, $02, $02,  $02, $02, $02, $f6,  $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02, $49, $3f,  $44, $38, $37, $3a,  $02, $02, $02, $00,$02,   $02, $02, $02,  $49, $3f, $44, $38,  $37, $3a, $02, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $00,$02,   $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $4d, $3f, $4a,  $3e, $02, $3f, $4a,  $49, $02, $02, $00,$02,   $02, $02, $4d,  $3f, $4a, $3e, $02,  $3f, $4a, $49, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $00,$02,   $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $f5, $02, $02, $02,  $02, $02, $02, $02,  $02, $f6, $02, $00,$02,   $02, $f5, $02,  $02, $02, $02, $02,  $02, $02, $02, $f6,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $49, $39, $3f,  $43, $3f, $4a, $37,  $48, $02, $02, $00,$02,   $02, $02, $49,  $39, $3f, $43, $3f,  $4a, $37, $48, $02,  $02
.byt ZIPNT_ZEROS(3+3)
.byt                $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $00,$02,   $02, $02, $02,  $02, $02, $02, $02,  $02, $02, $02, $02,  $02
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(3+32+32+32+32+10)
.byt                                                     $46, $48,  $3b, $49, $49, $02,  $49, $4a, $37, $48,  $4a
;    -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  -------------------  ------------------
.byt ZIPNT_ZEROS(11+32+32)
nametable_character_selection_attributes:
.byt %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111, %11111111
.byt ZIPNT_ZEROS(8+1)
.byt            %10000000, %10100000, ZIPNT_ZEROS(2),       %10100000, %00100000,
.byt ZIPNT_ZEROS(1+1),
.byt            %00001000, %00001010, ZIPNT_ZEROS(2),       %00001010, %00000010,
.byt ZIPNT_ZEROS(1+8+8+2)
.byt                       %11000000, %11110000, %11110000, %00110000
.byt ZIPNT_ZEROS(2+8)
nametable_character_selection_end:
.byt ZIPNT_END
