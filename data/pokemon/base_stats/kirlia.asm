	db KIRLIA ; ???

	db  38,  35,  35,  50,  65,  55
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FAIRY ; type
	db 120 ; catch rate
	db 140 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kirlia/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HIDDEN_POWER
	; end
