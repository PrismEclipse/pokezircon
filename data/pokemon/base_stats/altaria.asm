	db ALTARIA ; 164

	db 75,  70,  90,  80,  70,  105
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/altaria/front.dimensions"
	db GROWTH_FAST ; growth rate
	dn EGG_DRAGON, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
