	db EXEGGCUTE ; 102

	db  60,  40,  80,  40,  60,  45
	evs  0,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 98 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/exeggcute/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROLLOUT, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, SWORDS_DANCE, PROTECT, GIGA_DRAIN, ENDURE, THUNDER_WAVE, SOLARBEAM, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, CALM_MIND, REST, ATTRACT, THIEF, NASTY_PLOT, STRENGTH, FLASH
	; end
