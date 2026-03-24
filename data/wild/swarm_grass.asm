; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	db 3, ARON
	db 3, MAGIKARP
	db 2, RINRING
	db 2, ARON
	db 2, MAGIKARP
	db 4, MAGIKARP
	db 4, MAGIKARP
	; day
	db 3, ARON
	db 3, MAGIKARP
	db 2, RINRING
	db 2, ARON
	db 2, MAGIKARP
	db 4, MAGIKARP
	db 4, MAGIKARP
	; nite
	db 3, ARON
	db 3, MAGIKARP
	db 2, RINRING
	db 2, ARON
	db 2, MAGIKARP
	db 4, MAGIKARP
	db 4, MAGIKARP

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 12, MAGIKARP
	db 12, MAGIKARP
	db 12, YANMA
	db 14, YANMA
	db 14, ROOKIDEE
	db 10, DITTO
	db 10, DITTO
	; day
	db 12, MAGIKARP
	db 12, MAGIKARP
	db 12, YANMA
	db 14, YANMA
	db 14, ROOKIDEE
	db 10, DITTO
	db 10, DITTO
	; nite
	db 12, MAGIKARP
	db 12, MAGIKARP
	db 12, YANMA
	db 14, YANMA
	db 14, MAGIKARP
	db 10, DITTO
	db 10, DITTO

	db -1 ; end
