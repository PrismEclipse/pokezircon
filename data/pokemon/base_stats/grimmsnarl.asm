	db GRIMMSNARL ; 063

	db  95,  120,  65,  60, 95,  75
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FAIRY ; type
	db 45 ; catch rate
	db 200 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/grimmsnarl/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
