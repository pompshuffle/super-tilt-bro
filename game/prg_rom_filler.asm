;
; Credits in the rom
;

credits_begin:
.asc "           credits",$0a
.asc $0a
.asc "           authors",$0a
.asc $0a
.asc "sylvain gadrat",$0a
.asc $0a
.asc "         art-sources",$0a
.asc $0a
.asc "bomb party",$0a
.asc "    by matt hackett of",$0a
.asc "    lost decade games",$0a
.asc "twin dragons",$0a
.asc "    by surt",$0a
.asc "sinbad",$0a
.asc "    by zi ye",$0a
.asc "i like jump rope",$0a
.asc "perihelium",$0a
.asc "termosdynamik",$0a
.asc "    by ozzed",$0a
.asc $0a
.asc "           thanks",$0a
.asc $0a
.asc "antoine gohin   bacteriamage",$0a
.asc "benoit ryder    bjorn nah",$0a
.asc "margarita gadrat",$0a
.asc "supergameland",$0a
.byt $00
credits_end:

;
; Print some PRG-ROM space usage information
;

#echo PRG-ROM total space:
#print $10000-$8000
#echo
#echo PRG-ROM code size:
#print code_end-$8000
#echo
#echo PRG-ROM data size:
#print data_end-data_begin
#echo PRG-ROM nametables size:
#print data_nt_end-data_nt_begin
#echo PRG-ROM animations size:
#print data_anim_end-data_anim_begin
#echo PRG-ROM musics size:
#print data_music_end-data_music_begin
#echo
#echo PRG-ROM credits size:
#print credits_end-credits_begin
#echo
#echo PRG-ROM free space:
#print $fffa-*

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