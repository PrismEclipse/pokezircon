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
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
	const_def 1
	const TREECKO  ; 01
	const GROVYLE    ; 02
	const SCEPTILE   ; 03
	const TORCHIC ; 04
	const COMBUSKEN ; 05
	const BLAZIKEN  ; 06
	const MUDKIP   ; 07
	const MARSHTOMP  ; 08
	const SWAMPERT  ; 09
	const GRUBBIN   ; 0a
	const CHARJABUG    ; 0b
	const VIKAVOLT ; 0c
	const VENIPEDE     ; 0d
	const WHIRLIPEDE     ; 0e
	const SCOLIPEDE   ; 0f
	const ROOKIDEE    ; 10
	const CORVISQUIRE  ; 11
	const CORVIKNIGHT    ; 12
	const ZIGZAGOON   ; 13
	const LINOONE   ; 14
	const TAILLOW    ; 15
	const SWELLOW    ; 16
	const KOTORA      ; 17
	const RAITORA     ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const SANDYGAST ; 1b
	const PALOSSAND  ; 1c
	const SABLEYE  ; 1d
	const ROSELIA   ; 1e
	const ROSERADE  ; 1f
	const CHARCADET  ; 20
	const ARMAROGUE   ; 21
	const CERULEDGE   ; 22
	const CLEFAIRY   ; 23
	const CLEFABLE   ; 24
	const GLIMMET    ; 25
	const GLIMMORA  ; 26
	const CUTIEFLY ; 27
	const RIBOMBEE ; 28
	const RINRING      ; 29
	const BELLERUN     ; 2a
	const GAVILLAIN     ; 2b
	const CACTRI      ; 2c
	const SHARPOON  ; 2d
	const SHROOMISH     ; 2e
	const BRELOOM   ; 2f
	const LARVESTA    ; 30
	const VOLCARONA   ; 31
	const DRILBUR    ; 32
	const EXCADRILL    ; 33
	const MEOWTH     ; 34
	const PERSIAN    ; 35
	const WIMPOD    ; 36
	const GOLISOPOD    ; 37
	const PETILIL     ; 38
	const LILLIGANT   ; 39
	const LILLIGANT_H  ; 3a
	const ORTHWORM  ; 3b
	const MIMIKYU   ; 3c
	const SPHEAL    ; 3d
	const SEALEO  ; 3e
	const WALREIN  ; 3f
	const HATENNA    ; 40
	const HATTREM    ; 41
	const HATTERENE   ; 42
	const DEDENNE     ; 43
	const GOLETT    ; 44
	const GOLURK    ; 45
	const BELLSPROUT ; 46
	const WEEPINBELL ; 47
	const VICTREEBEL ; 48
	const SWAVYBELL  ; 49
	const ARON    ; 4a
	const LAIRON   ; 4b
	const AGGRON     ; 4c
	const DARUMAKA     ; 4d
	const DARMANITAN   ; 4e
	const SLOWPOKE   ; 4f
	const SLOWBRO    ; 50
	const SLOWKING   ; 51
	const MAGNEMITE  ; 52
	const MAGNETON   ; 53
	const MAGNEZONE  ; 54
	const FARFETCH_D ; 55
	const LUXWAN 	 ; 56
	const CHATOT      ; 57
	const HAWLUCHA     ; 58
	const WAILMER       ; 59
	const WAILORD    ; 5a
	const SKRELP     ; 5b
	const DRAGALGE        ; 5c
	const SHELLDER   ; 5d
	const CLOYSTER   ; 5e
	const TURBANN    ; 5f
	const GASTLY     ; 60
	const HAUNTER    ; 61
	const GENGAR     ; 62
	const ABSOL      ; 63
	const INKAY    ; 64
	const MALAMAR      ; 65
	const CLAUNCHER    ; 66
	const CLAWITZER    ; 67
	const IMPIDIMP    ; 68
	const MORGREM  ; 69
	const GRIMMSNARL  ; 6a
	const SPIRITOMB  ; 6b
	const CUBONE     ; 6c
	const MAROWAK    ; 6d
	const LATIAS  ; 6e
	const LATIOS ; 6f
	const LICKITUNG  ; 70
	const LICKIKING  ; 71
	const VAROOM    ; 72
	const REVAVROOM    ; 73
	const RHYHORN    ; 74
	const RHYDON     ; 75
	const RHYPERIOR  ; 76
	const CHANSEY    ; 77
	const BLISSEY    ; 78
	const TANGELA    ; 79
	const TANGOREST  ; 7a
	const BOMSEEKER ; 7b
	const CORASUN    ; 7c
	const ANCHORAGE     ; 7d
	const GROTESS    ; 7e
	const STARYU     ; 7f
	const STARMIE    ; 80
	const SCYTHER    ; 81
	const JOLTIK ; 82
	const GALVANTULA     ; 83
	const PINSIR     ; 84
	const PRAXE 	 ; 85
	const MAGIKARP   ; 86
	const GYARADOS   ; 87
	const FALINKS     ; 88
	const DITTO      ; 89
	const METTO 	 ; 8a
	const EEVEE      ; 8b
	const VAPOREON   ; 8c
	const JOLTEON    ; 8d
	const FLAREON    ; 8e
	const PORYGON    ; 8f
	const TIRTOUGA    ; 90
	const CARRACOSTA    ; 91
	const ARCHEN     ; 92
	const ARCHEOPS   ; 93
	const TYRUNT ; 94
	const TYRANTRUM    ; 95
	const AMAURA 	 ; 96
	const AURORUS    ; 97
DEF JOHTO_POKEMON EQU const_value
	const RAGING_BOLT   ; 98
	const GOUGING_FIRE     ; 99
	const WALKING_WAKE    ; 9a
	const GIBLE   ; 9b
	const GABITE  ; 9c
	const GARCHOMP  ; 9d
	const NECROZMA   ; 9e
	const JIRACHI        ; 9f
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
	const SWABLU   ; ab
	const ALTARIA    ; ac
	const TAROUNTULA     ; ad
	const SPIDOPS     ; ae
	const RALTS   ; af
	const KIRLIA    ; b0
	const GARDEVOIR     ; b1
	const GALLADE 	 ; b2
	const MISSINGNO   ; b3
	const LEAFEON     ; b4
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
	const UMBREON_RED ; c0
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
	const APRICORB   ; ce
	const CHESTRODE ; cf
	const WOLFMAN  ; d0
	const WARWOLF     ; d1
	const STUFFUL    ; d2
	const BEWEAR   ; d3
	const QWILFISH   ; d4
	const NUMPUFF    ; d5
	const SCIZOR     ; d6
	const HERACROSS  ; d7
	const SNEASEL    ; d8
	const WEAVILE    ; d9
	const RELICANTH   ; da
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
	const CRAMORANT    ; e5
	const TRAPINCH     ; e6
	const VIBRAVA    ; e7
	const FLYGON   ; e8
	const PORYGON2   ; e9
	const PORYGONZ   ; ea
	const SMEARGLE   ; eb
	const BLACEPHALON ; ec
	const STAKATAKA  ; ed
	const BLOSSOMOLE  ; ee
	const CHIMECHO     ; ef
	const KURSTRAW      ; f0
	const PANGSHI    ; f1
	const ZYGARDE10  ; f2
	const ZYGARDE50  ; f3
	const ZYGARDE100 ; f4
	const LARVITAR   ; f5
	const PUPITAR    ; f6
	const TYRANITAR  ; f7
	const LUGIA      ; f8
	const HO_OH      ; f9
	const CELEBI     ; fa
	const GOROCHU ; fb
	const SYLVEON ; fc
	const SLITHER_WING ;fd
DEF NUM_POKEMON EQU const_value - 1
	const EGG        ; fe

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
