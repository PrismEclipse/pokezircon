	db ZYGARDE10 ; 243

	db  54,  100,  71, 115, 61, 85
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GROUND ; type
	db 3 ; catch rate
	db 219 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/zygarde10/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
