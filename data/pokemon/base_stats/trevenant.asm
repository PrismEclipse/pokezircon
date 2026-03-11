	db TREVENANT ; ???

	db  85,  110,  76,  56,  65,  82
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GRASS ; type
	db 60 ; catch rate
	db 166 ; base exp
	db NO_ITEM, SPELL_TAG ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/trevenant/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
