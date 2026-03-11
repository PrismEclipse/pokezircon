	db GARDEVOIR ; ???

	db  68,  65,  65,  80, 125, 115
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 208 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/gardevoir/front.dimensions"

	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
