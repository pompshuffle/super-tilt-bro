init_donation_btc_screen:
.(
	lda #<nametable_donation_btc
	sta tmpfield1
	lda #>nametable_donation_btc
	sta tmpfield2
	
	jmp init_donation_qr_screen
.)

init_donation_paypal_screen:
.(
	lda #<nametable_donation_paypal
	sta tmpfield1
	lda #>nametable_donation_paypal
	sta tmpfield2
	
	;jmp init_donation_qr_screen ; fallthrough
.)

init_donation_qr_screen:
.(
	SWITCH_BANK(#DATA_BANK_NUMBER)

	; Copy background from PRG-rom to PPU nametable
	jsr draw_zipped_nametable

	; Construct nt buffers for palettes (to avoid changing it mid-frame)
	lda #<palette_donation
	sta tmpfield1
	lda #>palette_donation
	sta tmpfield2
	jsr construct_palettes_nt_buffer

	; Initialize common menus effects
	jsr re_init_menu

	rts
.)

donation_qr_screen_tick:
.(
	SWITCH_BANK(#DATA_BANK_NUMBER)

	; Play common menus effects
	jsr tick_menu

	; If all buttons of any controller are released on this frame, got to the next screen
	lda controller_a_btns
	bne check_controller_b
	cmp controller_a_last_frame_btns
	bne next_screen
	check_controller_b:
	lda controller_b_btns
	bne end
	cmp controller_b_last_frame_btns
	bne next_screen
	jmp end

	next_screen:
	lda #GAME_STATE_DONATION
	jsr change_global_game_state

	end:
	rts
.)
