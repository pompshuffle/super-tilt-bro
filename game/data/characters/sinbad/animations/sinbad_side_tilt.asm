anim_sinbad_side_tilt:
; Frame 1
ANIM_FRAME_BEGIN(7)
ANIM_HURTBOX($00, $0c, $00, $10)
ANIM_HITBOX($01, $05, $fd00, $fd00, $fff0, $fffc, $04, $0a, $f4, $00) ; enabled, damages, base_h, base_v, force_h, force_v, left, right, top, bottom
ANIM_SPRITE($f4, TILE_VERTICAL_SCIMITAR_BLADE, $01, $02)
ANIM_SPRITE($fc, TILE_VERTICAL_SCIMITAR_HANDLE, $01, $02)
ANIM_SPRITE($00, TILE_SIDE_TILT_SINBAD_1_1, $00, $fc) ; Y, tile, attr, X
ANIM_SPRITE($00, TILE_SIDE_TILT_SINBAD_1_2, $00, $04)
ANIM_SPRITE($08, TILE_SIDE_TILT_SINBAD_1_3, $00, $fc)
ANIM_SPRITE($08, TILE_SIDE_TILT_SINBAD_1_4, $00, $04)
ANIM_FRAME_END
; Frame 2
ANIM_FRAME_BEGIN(7)
ANIM_HURTBOX($00, $08, $00, $10)
ANIM_HITBOX($00, $05, $fd00, $fd00, $fff0, $fffc, $f9, $01, $fc, $08)
ANIM_SPRITE($fc, TILE_ANGLED_SCIMITAR_BLADE, $01, $f9) ; Y, tile, attr, X
ANIM_SPRITE($04, TILE_ANGLED_SCIMITAR_HANDLE, $01, $f9)
ANIM_SPRITE($00, TILE_SIDE_TILT_SINBAD_2_1, $00, $00)
ANIM_SPRITE($08, TILE_SIDE_TILT_SINBAD_2_2, $00, $00)
ANIM_FRAME_END
; Frame 3
ANIM_FRAME_BEGIN(7)
ANIM_HURTBOX($fc, $08, $00, $10)
ANIM_HITBOX($00, $05, $fd00, $fd00, $fff0, $fffc, $f4, $00, $06, $0c)
ANIM_SPRITE($06, TILE_SCIMITAR_BLADE, $01, $f4) ; Y, tile, attr, X
ANIM_SPRITE($06, TILE_SCIMITAR_HANDLE, $01, $fc)
ANIM_SPRITE($00, TILE_SIDE_TILT_SINBAD_3_1, $00, $f8)
ANIM_SPRITE($00, TILE_SIDE_TILT_SINBAD_3_2, $00, $00)
ANIM_SPRITE($08, TILE_SIDE_TILT_SINBAD_3_3, $00, $00)
ANIM_FRAME_END
; End of animation
ANIM_ANIMATION_END