; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db PRIDE_BALL, LEFTOVERS
	db SHINY_STONE, BITTER_BERRY
	db DUSK_STONE, SITRUS_BERRY
	db DAWN_STONE, BERRY
	db DUBIOUS_DISC, BERRY
	db PROTECTOR, BERRY
	db LINKING_CORD, BERRY
	db ZYGARDE_CRYSTAL, BERRY
	db ANCIENT_PLATE, BERRY
	db MARINE_CROWN, BERRY
	db AZURE_FLOAT, BERRY
	db -1,      BERRY
	db 0 ; end
