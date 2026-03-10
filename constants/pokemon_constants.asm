; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - IconPointers (see data/pokemon/icon_pointers.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
	const BULBASAUR  ; 01
	const IVYSAUR    ; 02
	const VENUSAUR   ; 03
	const CHARMANDER ; 04
	const CHARMELEON ; 05
	const CHARIZARD  ; 06
	const SQUIRTLE   ; 07
	const WARTORTLE  ; 08
	const BLASTOISE  ; 09
	const CATERPIE   ; 0a
	const METAPOD    ; 0b
	const BUTTERFREE ; 0c
	const WEEDLE     ; 0d
	const KAKUNA     ; 0e
	const BEEDRILL   ; 0f
	const PIDGEY     ; 10
	const PIDGEOTTO  ; 11
	const PIDGEOT    ; 12
	const RATTATA    ; 13
	const RATICATE   ; 14
	const SPEAROW    ; 15
	const FEAROW     ; 16
	const EKANS      ; 17
	const ARBOK      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDSHREW  ; 1b
	const SANDSLASH  ; 1c
	const NIDORAN_F  ; 1d
	const NIDORINA   ; 1e
	const NIDOQUEEN  ; 1f
	const NIDORAN_M  ; 20
	const NIDORINO   ; 21
	const NIDOKING   ; 22
	const CLEFAIRY   ; 23
	const CLEFABLE   ; 24
	const VULPIX     ; 25
	const NINETALES  ; 26
	const JIGGLYPUFF ; 27
	const WIGGLYTUFF ; 28
	const ZUBAT      ; 29
	const GOLBAT     ; 2a
	const ODDISH     ; 2b
	const GLOOM      ; 2c
	const VILEPLUME  ; 2d
	const PARAS      ; 2e
	const PARASECT   ; 2f
	const VENONAT    ; 30
	const VENOMOTH   ; 31
	const DIGLETT    ; 32
	const DUGTRIO    ; 33
	const MEOWTH     ; 34
	const PERSIAN    ; 35
	const PSYDUCK    ; 36
	const GOLDUCK    ; 37
	const MANKEY     ; 38
	const PRIMEAPE   ; 39
	const TENTACOOL  ; 3a
	const GROWLITHE  ; 3b
	const ARCANINE   ; 3c
	const POLIWAG    ; 3d
	const POLIWHIRL  ; 3e
	const POLIWRATH  ; 3f
	const ABRA       ; 40
	const KADABRA    ; 41
	const ALAKAZAM   ; 42
	const MACHOP     ; 43
	const MACHOKE    ; 44
	const MACHAMP    ; 45
	const BELLSPROUT ; 46
	const WEEPINBELL ; 47
	const VICTREEBEL ; 48
	const SWAVYBELL  ; 49
	const GEODUDE    ; 4a
	const GRAVELER   ; 4b
	const GOLEM      ; 4c
	const PONYTA     ; 4d
	const RAPIDASH   ; 4e
	const SLOWPOKE   ; 4f
	const SLOWBRO    ; 50
	const SLOWKING   ; 51
	const MAGNEMITE  ; 52
	const MAGNETON   ; 53
	const MAGNEZONE  ; 54
	const FARFETCH_D ; 55
	const LUXWAN 	 ; 56
	const DODUO      ; 57
	const DODRIO     ; 58
	const SEEL       ; 59
	const DEWGONG    ; 5a
	const GRIMER     ; 5b
	const MUK        ; 5c
	const SHELLDER   ; 5d
	const CLOYSTER   ; 5e
	const TURBANN    ; 5f
	const GASTLY     ; 60
	const HAUNTER    ; 61
	const GENGAR     ; 62
	const ONIX       ; 63
	const DROWZEE    ; 64
	const HYPNO      ; 65
	const KRABBY     ; 66
	const KINGLER    ; 67
	const VOLTORB    ; 68
	const ELECTRODE  ; 69
	const EXEGGCUTE  ; 6a
	const EXEGGUTOR  ; 6b
	const CUBONE     ; 6c
	const MAROWAK    ; 6d
	const LATIAS  ; 6e
	const LATIOS ; 6f
	const LICKITUNG  ; 70
	const LICKIKING  ; 71
	const KOFFING    ; 72
	const WEEZING    ; 73
	const RHYHORN    ; 74
	const RHYDON     ; 75
	const RHYPERIOR  ; 76
	const CHANSEY    ; 77
	const BLISSEY    ; 78
	const TANGELA    ; 79
	const TANGOREST  ; 7a
	const KANGASKHAN ; 7b
	const HORSEA     ; 7c
	const SEADRA     ; 7d
	const GOLDEEN    ; 7e
	const STARYU     ; 7f
	const STARMIE    ; 80
	const SCYTHER    ; 81
	const ELECTABUZZ ; 82
	const MAGMAR     ; 83
	const PINSIR     ; 84
	const PRAXE 	 ; 85
	const MAGIKARP   ; 86
	const GYARADOS   ; 87
	const LAPRAS     ; 88
	const DITTO      ; 89
	const METTO 	 ; 8a
	const EEVEE      ; 8b
	const VAPOREON   ; 8c
	const JOLTEON    ; 8d
	const FLAREON    ; 8e
	const PORYGON    ; 8f
	const OMANYTE    ; 90
	const OMASTAR    ; 91
	const KABUTO     ; 92
	const KABUTOPS   ; 93
	const AERODACTYL ; 94
	const SNORLAX    ; 95
	const CHINCHOU 	 ; 96
	const LANTURN    ; 97
	const RAGING_BOLT   ; 98
	const GOUGING_FIRE     ; 99
	const WALKING_WAKE    ; 9a
	const DRATINI    ; 9b
	const DRAGONAIR  ; 9c
	const DRAGONITE  ; 9d
	const NECROZMA   ; 9e
	const MEW        ; 9f
DEF JOHTO_POKEMON EQU const_value
	const ROWLET  ; a0
	const DARTRIX    ; a1
	const DECIDUEYE	; a2
	const FENNEKIN  ; a3
	const BRAIXEN    ; a4
	const DELPHOX ; a5
	const PIPLUP   ; a6
	const PRINPLUP   ; a7
	const EMPOLEON ; a8
	const SENTRET    ; a9
	const FURRET     ; aa
	const HOOTHOOT   ; ab
	const NOCTOWL    ; ac
	const LEDYBA     ; ad
	const LEDIAN     ; ae
	const RALTS   ; af
	const KIRLIA    ; b0
	const GARDEVOIR     ; b1
	const GALLADE 	 ; b2
	const PICHU      ; b3
	const CLEFFA     ; b4
	const TINKATINK  ; b5
	const TINKATUFF  ; b6
	const TINKATON   ; b7
	const MAREEP     ; b8
	const FLAAFFY    ; b9
	const AMPHAROS   ; ba
	const MARILL     ; bb
	const AZUMARILL  ; bc
	const HOPPIP     ; bd
	const SKIPLOOM   ; be
	const JUMPLUFF   ; bf
	const AIPOM      ; c0
	const SUNKERN    ; c1
	const SUNFLORA   ; c2
	const YANMA      ; c3
	const YANMEGA 	 ; c4
	const WOOPER     ; c5
	const QUAGSIRE   ; c6
	const ESPEON     ; c7
	const UMBREON    ; c8
	const MISDREAVUS ; c9
	const MISMAGIUS  ; ca
	const UNOWN      ; cb
	const PHANTUMP  ; cc
	const TREVENANT  ; cd
	const PINECO     ; ce
	const FORRETRESS ; cf
	const DUNSPARCE  ; d0
	const GLIGAR     ; d1
	const STEELIX    ; d2
	const SNUBBULL   ; d3
	const QWILFISH   ; d4
	const NUMPUFF    ; d5
	const SCIZOR     ; d6
	const HERACROSS  ; d7
	const SNEASEL    ; d8
	const WEAVILE    ; d9
	const URSARING   ; da
	const SLUGMA     ; db
	const MAGCARGO   ; dc
	const SWINUB     ; dd
	const PILOSWINE  ; de
	const MAMOSWINE  ; df
	const REMORAID   ; e0
	const OCTILLERY  ; e1
	const MANTINE    ; e2
	const HOUNDOUR   ; e3
	const HOUNDOOM   ; e4
	const KINGDRA    ; e5
	const PHANPY     ; e6
	const DONPHAN    ; e7
	const STANTLER   ; e8
	const PORYGON2   ; e9
	const PORYGONZ   ; ea
	const SMEARGLE   ; eb
	const BLACEPHALON ; ec
	const STAKATAKA  ; ed
	const SMOOCHUM   ; ee
	const ELEKID     ; ef
	const MAGBY      ; f0
	const MILTANK    ; f1
	const ZYGARDE10  ; f2
	const ZYGARDE50  ; f3
	const ZYGARDE100 ; f4
	const LARVITAR   ; f5
	const PUPITAR    ; f6
	const TYRANITAR  ; f7
	const LUGIA      ; f8
	const HO_OH      ; f9
	const CELEBI     ; fa
	const TENTACRUEL ; fb
DEF NUM_POKEMON EQU const_value - 1
	const_skip       ; fc
	const EGG        ; fd

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
DEF NUM_UNOWN EQU const_value - 1 ; 26
