; Constants for momitem offsets (see data/items/mom_phone.asm)
rsreset
DEF MOMITEM_TRIGGER rb 3 ; 0
DEF MOMITEM_COST    rb 3 ; 3
DEF MOMITEM_KIND    rb   ; 6
DEF MOMITEM_ITEM    rb   ; 7
DEF MOMITEM_SIZE EQU _RS ; 8

; momitem kind values
	const_def 1
	const MOM_ITEM
	const MOM_DOLL

MomTriesToBuySomething::