	db CORASUN ; 193

	db  35,  45,  45,  75,  65,  75
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 89 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/corasun/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
