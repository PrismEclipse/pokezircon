	db IMPIDIMP ; 100

	db  45,  45,  30,  50,  55,  40
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, FAIRY ; type
	db 255 ; catch rate
	db 53 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/impidimp/front.dimensions"

	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
