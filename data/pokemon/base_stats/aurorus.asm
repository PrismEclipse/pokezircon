	db AURORUS ; 183

	db 123,  77,  72,  58,  99,  92
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ICE ; type
	db 45 ; catch rate
	db 104 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 30 ; step cycles to hatch
	INCBIN "gfx/pokemon/aurorus/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
