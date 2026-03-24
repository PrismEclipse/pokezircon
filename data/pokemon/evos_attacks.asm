SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evolution_moves.asm"
INCLUDE "data/pokemon/evos_attacks_pointers.asm"

; How many "parameters" each evolution type has
EvoTypeSizes::
	db 2 ; EVOLVE_LEVEL
	db 2 ; EVOLVE_ITEM
	db 3 ; EVOLVE_ITEM_GENDER
	db 2 ; EVOLVE_TRADE
	db 2 ; EVOLVE_HAPPINESS
	db 3 ; EVOLVE_STAT
	db 2 ; EVOLVE_MOVE
	db 3 ; EVOLVE_HOLD


TreeckoEvosAttacks:
	db EVOLVE_LEVEL, 16, GROVYLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 6, ABSORB
	db 11, QUICK_ATTACK
	db 16, PURSUIT
	db 19, SCREECH
	db 22, MEGA_DRAIN
	db 25, AGILITY
	db 28, BODY_SLAM
	db 31, PROTECT
	db 34, GIGA_DRAIN
	db 0 ; no more level-up moves

GrovyleEvosAttacks:
	db EVOLVE_LEVEL, 36, SCEPTILE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ABSORB
	db 1, DISARM
	db 1, QUICK_ATTACK
	db 15, CROSS_CUTTER
	db 17, PURSUIT
	db 21, SCREECH
	db 25, AGILITY
	db 29, BODY_SLAM
	db 32, PROTECT
	db 37, FALSE_SWIPE
	db 41, DRAGON_RUSH
	db 45, HEALING_LIGHT
	db 49, LEAF_STORM
	db 0 ; no more level-up moves

SceptileEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ABSORB
	db 1, DISARM
	db 1, QUICK_ATTACK
	db 15, CROSS_CUTTER
	db 17, PURSUIT
	db 21, SCREECH
	db 25, AGILITY
	db 29, BODY_SLAM
	db 32, PROTECT
	db 35, LEAF_BLADE
	db 39, FALSE_SWIPE
	db 45, DRAGON_RUSH
	db 51, HEALING_LIGHT
	db 57, LEAF_STORM
	db 69, FRENZY_PLANT
	db 0 ; no more level-up moves
	
TorchicEvosAttacks:
	db EVOLVE_LEVEL, 16, COMBUSKEN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, FOCUS_ENERGY
	db 10, EMBER
	db 16, PECK
	db 19, SMOKESCREEN
	db 22, FIRE_SPIN
	db 25, QUICK_ATTACK
	db 28, SLASH
	db 31, AERIAL_ACE
	db 34, FLAMETHROWER
	db 0 ; no more level-up moves

CombuskenEvosAttacks:
	db EVOLVE_LEVEL, 36, BLAZIKEN
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, FOCUS_ENERGY
	db 1, GROWL
	db 1, SCRATCH
	db 15, DOUBLE_KICK
	db 17, PECK
	db 21, SMOKESCREEN
	db 27, QUICK_ATTACK
	db 33, SLASH
	db 40, AERIAL_ACE
	db 47, FLAMETHROWER
	db 54, RAGING_FURY
	db 0 ; no more level-up moves

BlazikenEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, FOCUS_ENERGY
	db 1, GROWL
	db 1, SCRATCH
	db 1, FIRE_PUNCH
	db 15, DOUBLE_KICK
	db 17, PECK
	db 21, SMOKESCREEN
	db 27, QUICK_ATTACK
	db 33, SLASH
	db 35, BLAZE_KICK
	db 42, AERIAL_ACE
	db 50, FLAMETHROWER
	db 58, RAGING_FURY
	db 66, BRAVE_BIRD
	db 69, BLAST_BURN
	db 0 ; no more level-up moves

MudkipEvosAttacks:
	db EVOLVE_LEVEL, 16, MARSHTOMP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 7, MUD_SLAP
	db 10, WATER_GUN
	db 16, ROCK_THROW
	db 19, CONFUSE_RAY
	db 22, WHIRLPOOL
	db 25, TAKE_DOWN
	db 28, ROCK_SLIDE
	db 31, PROTECT
	db 34, HYDRO_PUMP
	db 0 ; no more level-up moves

MarshtompEvosAttacks:
	db EVOLVE_LEVEL, 36, SWAMPERT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, MUD_SLAP
	db 1, WATER_GUN
	db 15, BUBBLEBEAM
	db 17, ROCK_THROW
	db 22, CONFUSE_RAY
	db 28, WHIRLPOOL
	db 34, TAKE_DOWN
	db 40, ROCK_SLIDE
	db 46, PROTECT
	db 52, HYDRO_PUMP

SwampertEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, MUD_SLAP
	db 1, PIERCE
	db 5, SLOW_DOWN
	db 10, CROSS_CUTTER
	db 15, BITE
	db 21, SPARK
	db 25, BLOCK
	db 30, X_SCISSOR
	db 35, CRUNCH
	db 40, DIG
	db 0 ; no more level-up moves

CharjabugEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, VIKAVOLT
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, PIERCE
	db 1, SLOW_DOWN
	db 1, CROSS_CUTTER
	db 15, BITE
	db 19, THUNDER_WAVE
	db 23, SPARK
	db 29, BLOCK
	db 36, X_SCISSOR
	db 43, CRUNCH
	db 50, DIG
	db 57, IRON_DEFENSE
	db 0 ; no more level-up moves

VikavoltEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, PIERCE
	db 1, SLOW_DOWN
	db 1, CROSS_CUTTER
	db 1, THUNDERBOLT
	db 1, CRUNCH
	db 1, DIG
	db 1, X_SCISSOR
	db 1, IRON_DEFENSE
	db 15, BITE
	db 19, THUNDER_WAVE
	db 23, SPARK
	db 29, BLOCK
	db 36, BUG_BUZZ
	db 43, FATAL_BLOW
	db 50, FLY
	db 57, AGILITY
	db 64, ZAP_CANNON
	db 0 ; no more level-up moves

VenipedeEvosAttacks:
	db EVOLVE_LEVEL, 22, WHIRLIPEDE
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 5, POISON_STING
	db 8, SCREECH
	db 12, PURSUIT
	db 15, PROTECT
	db 19, SLUDGE ; Poison Tail
	db 22, CROSS_CUTTER
	db 26, RAPID_SPIN
	db 29, AGILITY
	db 33, X_SCISSOR ; Steamroller
	db 36, TOXIC
	db 38, POISON_JAB ; Venom Drench
	db 40, EXTREMESPEED ; Rock Climb
	db 43, DOUBLE_EDGE
	db 0 ; no more level-up moves

WhirlipedeEvosAttacks:
	db EVOLVE_LEVEL, 30, SCOLIPEDE
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 5, POISON_STING
	db 8, SCREECH
	db 12, PURSUIT
	db 15, PROTECT
	db 19, SLUDGE ; Poison Tail
	db 21, IRON_DEFENSE
	db 22, CROSS_CUTTER
	db 28, RAPID_SPIN
	db 32, AGILITY
	db 37, X_SCISSOR ; Steamroller
	db 41, TOXIC
	db 43, POISON_JAB ; Venom Drench
	db 46, EXTREMESPEED ; Rock Climb
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ScolipedeEvosAttacks:
	db 0 ; no more evolutions
	db 1, IRON_DEFENSE
	db 1, MEGAHORN
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 1, POISON_STING
	db 1, SCREECH
	db 5, POISON_STING
	db 8, SCREECH
	db 12, PURSUIT
	db 15, PROTECT
	db 19, SLUDGE ; Poison Tail
	db 21, IRON_DEFENSE
	db 22, CROSS_CUTTER
	db 28, RAPID_SPIN ;Mortal Spin from ZA
	db 33, AGILITY
	db 39, X_SCISSOR ; Steamroller
	db 44, TOXIC
	db 47, POISON_JAB ; Venom Drench
	db 50, EXTREMESPEED ; Rock Climb
	db 55, DOUBLE_EDGE
	db 65, MEGAHORN
	db 0 ; no more level-up moves

RookideeEvosAttacks:
	db EVOLVE_LEVEL, 18, CORVISQUIRE
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, PECK
	db 4, FAINT_ATTACK
	db 8, ROCK_SMASH
	db 12, FURY_STRIKES
	db 16, WING_ATTACK
	db 20, SPITE
	db 24, SCARY_FACE
	db 28, DRILL_PECK
	db 32, SWAGGER
	db 36, BRAVE_BIRD
	db 0 ; no more level-up moves

CorvisquireEvosAttacks:
	db EVOLVE_LEVEL, 38, CORVIKNIGHT
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, PECK
	db 4, FAINT_ATTACK
	db 8, ROCK_SMASH
	db 12, FURY_STRIKES
	db 16, WING_ATTACK
	db 22, SPITE
	db 28, SCARY_FACE
	db 34, DRILL_PECK
	db 40, SWAGGER
	db 46, BRAVE_BIRD
	db 0 ; no more level-up moves

CorviknightEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, PECK
	db 1, SCREECH
	db 1, IRON_DEFENSE
	db 1, IRON_HEAD
	db 4, FAINT_ATTACK
	db 8, ROCK_SMASH
	db 12, FURY_STRIKES
	db 16, WING_ATTACK
	db 22, SPITE
	db 28, SCARY_FACE
	db 34, DRILL_PECK
	db 37, STEEL_WING
	db 42, SWAGGER
	db 50, BRAVE_BIRD
	db 0 ; no more level-up moves

ZigzagoonEvosAttacks:
	db EVOLVE_LEVEL, 20, LINOONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, SMOKESCREEN
	db 8, DISARM
	db 11, QUICK_ATTACK
	db 14, HEADBUTT
	db 17, CHARM
	db 21, PIN_MISSILE
	db 24, REST
	db 27, TAKE_DOWN
	db 30, THIEF
	db 33, BELLY_DRUM
	db 36, DOUBLE_EDGE
	db 0 ; no more level-up moves

LinooneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 5, SMOKESCREEN
	db 8, DISARM
	db 11, QUICK_ATTACK
	db 14, HEADBUTT
	db 17, CHARM
	db 19, SLASH
	db 23, PIN_MISSILE
	db 28, REST
	db 33, TAKE_DOWN
	db 38, THIEF
	db 43, BELLY_DRUM
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

TaillowEvosAttacks:
	db EVOLVE_LEVEL, 20, SWELLOW
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 5, FOCUS_ENERGY
	db 9, QUICK_ATTACK
	db 13, WING_ATTACK
	db 17, DOUBLE_TEAM
	db 21, AERIAL_ACE
	db 25, PROTECT
	db 29, AGILITY
	db 33, AIR_SLASH
	db 37, COUNTER
	db 41, BRAVE_BIRD
	db 45, REVERSAL
	db 0 ; no more level-up moves

SwellowEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 1, QUICK_ATTACK
	db 13, WING_ATTACK
	db 17, DOUBLE_TEAM
	db 21, AERIAL_ACE
	db 27, PROTECT
	db 33, AGILITY
	db 39, AIR_SLASH
	db 45, COUNTER
	db 51, BRAVE_BIRD
	db 56, REVERSAL
	db 0 ; no more level-up moves

KotoraEvosAttacks:
	db EVOLVE_LEVEL, 31, RAITORA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 6, THUNDERSHOCK
	db 10, BITE
	db 15, THUNDER_WAVE
	db 19, SEND_AWAY
	db 24, SPARK
	db 28, TAKE_DOWN
	db 33, AGILITY
	db 37, CRUNCH
	db 42, THUNDERBOLT
	db 46, SLASH
	db 0 ; no more level-up moves

RaitoraEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 6, THUNDERSHOCK
	db 10, BITE
	db 15, THUNDER_WAVE
	db 19, SEND_AWAY
	db 24, SPARK
	db 28, TAKE_DOWN
	db 35, AGILITY
	db 42, CRUNCH
	db 49, THUNDERBOLT
	db 56, SLASH
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, DISARM ;Tail Whip
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 4, THUNDER_WAVE
	db 8, DOUBLE_TEAM
	db 12, DOUBLE_KICK ; Electro Ball ---> LGPE Level Up
	db 16, MUD_SLAP ;Feint ---> GSC Tm
	db 20, SPARK
	db 24, AGILITY
	db 28, IRON_TAIL
	db 32, THUNDERBOLT
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM ;Slam ----> TM Move
	db 44, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db EVOLVE_ITEM, MYSTERY_ITEM, GOROCHU
	db 0 ; no more evolutions
	db 1, THUNDERPUNCH
	db 1, THUNDERSHOCK
	db 1, DISARM
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 4, THUNDER_WAVE
	db 8, DOUBLE_TEAM
	db 12, DOUBLE_KICK ; Electro Ball ---> LGPE Level Up
	db 16, MUD_SLAP ;Feint ---> GSC Tm
	db 20, SPARK
	db 24, AGILITY
	db 28, IRON_TAIL
	db 32, THUNDERBOLT
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM ;Slam ----> TM Move
	db 44, THUNDER
	db 0 ; no more level-up moves

SandygastEvosAttacks:
	db EVOLVE_LEVEL, 42, PALOSSAND
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HARDEN
	db 5, ASTONISH
	db 10, MUD_SLAP
	db 15, MEGA_DRAIN
	db 20, SMOKESCREEN
	db 25, BULLDOZE
	db 30, HYPNOTIZE
	db 35, GIGA_DRAIN
	db 40, IRON_DEFENSE
	db 45, SHADOW_BALL
	db 50, EARTHQUAKE
	db 55, RECOVER
	db 60, SANDSTORM
	db 0 ; no more level-up moves

PalossandEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, HARDEN
	db 5, ASTONISH
	db 10, MUD_SLAP
	db 15, MEGA_DRAIN
	db 20, SMOKESCREEN
	db 25, BULLDOZE
	db 30, HYPNOTIZE
	db 35, GIGA_DRAIN
	db 40, IRON_DEFENSE
	db 47, SHADOW_BALL
	db 54, EARTHQUAKE
	db 61, RECOVER
	db 68, SANDSTORM
	db 0 ; no more level-up moves

BudewEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, ROSELIA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 7, POISONPOWDER ; Water Sport
	db 10, STUN_SPORE
	db 13, MEGA_DRAIN
	db 16, SLEEP_POWDER ; Worry Seed
	; Added Roselia's moves
	db 19, RAZOR_LEAF
	db 22, HYPNOTIZE ;GrassWhistle
	db 25, GIGA_DRAIN 
	db 31, SWEET_SCENT
	db 0 ; no more level-up moves

RoseliaEvosAttacks:
	db EVOLVE_ITEM, SHINY_STONE, ROSERADE
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 7, POISON_STING
	db 10, STUN_SPORE
	db 13, MEGA_DRAIN
	db 16, LEECH_SEED
	db 19, RAZOR_LEAF
	db 22, HYPNOTIZE ; Grasswhistle
	db 25, GIGA_DRAIN
	db 28, ACID ; Toxic Spikes
	db 31, SWEET_SCENT
	db 34, ENERGY_BALL ; Ingrain
	db 37, POISON_JAB ; Petal Blizzard
	db 40, TOXIC
	; Skipped Aromatherapy
	db 43, HEALING_LIGHT
	db 46, PETAL_DANCE
	db 0 ; no more level-up moves

RoseradeEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, MEGA_DRAIN
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 0 ; no more level-up moves

CharcadetEvosAttacks:
	db EVOLVE_ITEM, AUSPICIOUS_ARMOR, ARMAROGUE
	db EVOLVE_ITEM, MALICOUS_ARMOR, CERULEDGE
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, EMBER
	db 1, DISARM
	db 8, POISON_GAS
	db 12, FIRE_SPIN
	db 16, WILL_O_WISP
	db 20, NIGHT_SHADE
	db 24, FLAME_WHEEL
	db 28, CONFUSE_RAY
	db 32, DISABLE
	db 0 ; no more level-up moves

ArmarogueEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, EMBER
	db 1, DISARM
	db 1, POISON_GAS
	db 1, MYSTICAL_FIRE
	db 1, PSYBEAM
	db 12, FIRE_SPIN
	db 16, WILL_O_WISP
	db 20, NIGHT_SHADE
	db 24, FLAME_WHEEL
	db 28, CONFUSE_RAY
	db 32, DISABLE
	db 37, CALM_MIND
	db 42, TELEPORT
	db 48, FLAMETHROWER
	db 56, PSYCHIC_M
	db 62, ARMOR_CANNON
	db 0 ; no more level-up moves

CeruledgeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, EMBER
	db 1, DISARM
	db 1, POISON_GAS
	db 1, NIGHT_SLASH
	db 1, SHADOW_CLAW
	db 12, FIRE_SPIN
	db 16, WILL_O_WISP
	db 20, NIGHT_SHADE
	db 24, FLAME_WHEEL
	db 28, CONFUSE_RAY
	db 32, DISABLE
	db 37, SWORDS_DANCE
	db 42, TELEPORT
	db 48, BITTER_BLADE
	db 56, PSYCHO_CUT
	db 62, RAGING_FURY
	db 0 ; no more level-up moves


ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, TACKLE ;Pound
	db 1, GROWL
	db 1, HYPNOTIZE
	db 1, DEFENSE_CURL 
	db 4, FAIRY_WIND ;Stored Power ---> Z-A Level up
	db 8, ENCORE
	db 12, CHARM ;After You ---> Level up
	db 16, DRAINING_KISS ;Life Dew ---> ZA Level up
	db 20, METRONOME
	db 24, HEALING_LIGHT ;Moonlight ---> Fused Move
	db 28, DAZZLING_GLEAM ;Gravity ----> Tm
	db 32, AMNESIA ;Meteor Mash ----> Z-A Level Up
	db 36, MYSTICAL_FIRE ;Follow Me ----> Z-A Level up
	db 40, CALM_MIND ;Cosmic Power ----> TM
	db 44, MOONBLAST
	db 48, HEAL_BELL ;Healing Wish ----> Aromatherapy -----> Similar Move
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE ;Pound
	db 1, GROWL
	db 1, HYPNOTIZE
	db 1, DEFENSE_CURL 
	db 4, FAIRY_WIND ;Stored Power ---> Z-A Level up
	db 8, ENCORE
	db 12, CHARM ;After You ---> Level up
	db 16, DRAINING_KISS ;Life Dew ---> ZA Level up
	db 20, METRONOME
	db 24, HEALING_LIGHT ;Moonlight ---> Fused Move
	db 28, DAZZLING_GLEAM ;Gravity ----> Tm
	db 32, AMNESIA ;Meteor Mash ----> Z-A Level Up
	db 36, MYSTICAL_FIRE ;Follow Me ----> Z-A Level up
	db 40, CALM_MIND ;Cosmic Power ----> TM
	db 44, MOONBLAST
	db 48, HEAL_BELL ;Healing Wish ----> Aromatherapy -----> Similar Move
	db 0 ; no more level-up moves

GlimmetEvosAttacks:
	db EVOLVE_LEVEL, 35, GLIMMORA
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, ROCK_THROW
	db 7, ACID
	db 11, ANCIENTPOWER
	db 15, AGILITY ;Rock Polish ---> Same Effect
	db 18, SPIKES
	db 22, SLUDGE
	db 26, SANDSTORM
	db 29, SELFDESTRUCT
	db 33, ROCK_SLIDE
	db 37, IRON_DEFENSE ;ACid Armor ----> Similar move
	db 41, SLUDGE_BOMB
	db 0 ; no more level-up moves

GlimmoraEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, ROCK_THROW
	db 7, ACID
	db 11, ANCIENTPOWER
	db 15, AGILITY ;Rock Polish ---> Same Effect
	db 18, SPIKES
	db 22, SLUDGE
	db 26, SANDSTORM
	db 29, SELFDESTRUCT
	db 33, ROCK_SLIDE
	db 39, IRON_DEFENSE ;ACid Armor ----> Similar move
	db 44, SLUDGE_BOMB
	db 0 ; no more level-up moves

CutieflyEvosAttacks:
	db EVOLVE_LEVEL, 25, RIBOMBEE
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, FAIRY_WIND
	db 7, STUN_SPORE
	db 10, MEGA_DRAIN
	db 13, CHARM
	db 16, SWEET_KISS
	db 21, SWEET_SCENT
	db 26, DAZZLING_GLEAM
	db 31, GIGA_DRAIN ; MEGA_DRAIN
	db 36, LEECH_LIFE
	db 41, QUIVER_DANCE
	db 0 ; no more level-up moves

RibombeeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, FAIRY_WIND
	db 7, STUN_SPORE
	db 10, CHARM
	db 13, MEGA_DRAIN 
	db 16, SWEET_KISS
	db 21, SWEET_SCENT
	db 24, SLOW_DOWN
	db 28, DAZZLING_GLEAM
	db 35, GIGA_DRAIN ; MEGA_DRAIN
	db 42, LEECH_LIFE
	db 45, SLOW_DOWN
	db 49, QUIVER_DANCE
	db 0 ; no more level-up moves

RinringEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, BELLERUN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, PURSUIT
	db 10, DISABLE
	db 15, PAY_DAY
	db 20, CHARM
	db 24, FAINT_ATTACK
	db 29, FURY_STRIKES
	db 34, HEAL_BELL
	db 38, CONFUSE_RAY
	db 43, CRUNCH
	db 48, SLASH
	db 52, ATTRACT
	db 0 ; no more level-up moves

BellerunEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 6, PURSUIT
	db 10, DISABLE
	db 15, PAY_DAY
	db 20, CHARM
	db 24, FAINT_ATTACK
	db 30, FURY_STRIKES
	db 35, HEAL_BELL
	db 41, CONFUSE_RAY
	db 47, CRUNCH
	db 52, SLASH
	db 58, ATTRACT
	db 0 ; no more level-up moves

GavillainEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DISARM
	db 7, CONFUSE_RAY
	db 12, BITE
	db 16, SPARK
	db 20, DRAGONBREATH
	db 24, SLASH
	db 30, SCREECH
	db 34, GLARE
	db 39, DRAGON_CLAW
	db 45, NASTY_PLOT
	db 51, CRUNCH
	db 0 ; no more level-up moves

CactriEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, SMOKESCREEN
	db 6, VINE_WHIP
	db 11, PIERCE
	db 16, GROWTH
	db 22, PIN_MISSILE
	db 28, SPIKES
	db 34, FURY_STRIKES
	db 40, FAINT_ATTACK
	db 45, GIGA_DRAIN
	db 50, SANDSTORM
	db 55, EXPLOSION
	db 0 ; no more level-up moves

SharpoonEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, DISARM
	db 7, WATER_GUN
	db 13, SCREECH
	db 19, PIERCE
	db 25, FURY_STRIKES
	db 31, SWORDS_DANCE
	db 37, IRON_HEAD
	db 42, CRUNCH
	db 48, IRON_TAIL
	db 54, HYDRO_PUMP
	db 60, FATAL_BLOW
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	db EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, TACKLE
	db 5, STUN_SPORE
	db 8, LEECH_SEED
	db 12, MEGA_DRAIN
	db 15, HEADBUTT
	db 19, POISONPOWDER
	db 22, SLEEP_POWDER ; Worry Seed
	db 26, GIGA_DRAIN
	db 29, GROWTH
	db 33, TOXIC
	db 36, SPORE
	db 39, ENERGY_BALL
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, MACH_PUNCH
	db 1, ABSORB
	db 1, TACKLE
	db 1, STUN_SPORE
	db 1, LEECH_SEED
	db 5, STUN_SPORE
	db 8, LEECH_SEED
	db 12, MEGA_DRAIN
	db 15, HEADBUTT
	db 19, POISONPOWDER ; Feint
	db 22, COUNTER
	db 22, MACH_PUNCH
	db 28, ROCK_SMASH ; Force Palm
	db 33, LOCK_ON ; Mind Reader
	db 39, SPORE ; Sky Uppercut
	db 44, ENERGY_BALL
	db 50, HAMMER_ARM
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	db EVOLVE_LEVEL, 59, VOLCARONA
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, SLOW_DOWN
	db 10, LEECH_LIFE ; Absorb
	db 20, TAKE_DOWN
	; Skipped Flame Charge
	db 30, GIGA_DRAIN
	db 40, DOUBLE_EDGE
	db 50, FLAME_WHEEL
	db 60, BUG_BUZZ
	db 70, AMNESIA
	; Skipped Thrash
	db 80, RAGING_FURY
	db 0 ; no more level-up moves

VolcaronaEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUIVER_DANCE
	db 1, HURRICANE
	db 1, OVERHEAT ; Fiery Dance
	db 1, FLAMETHROWER ; Heat Wave
	db 1, RAGING_FURY
	db 1, EMBER
	db 1, SLOW_DOWN
	db 1, LEECH_LIFE ; Absorb
	db 1, GUST
	db 10, LEECH_LIFE ; Absorb
	db 20, GUST
	db 30, FIRE_SPIN
	db 40, SEND_AWAY
	; Skipped Silver Wind
	db 50, FLAMETHROWER ; Heat Wave
	db 58, QUIVER_DANCE
	db 60, BUG_BUZZ
	; Skipped Rage Powder
	db 70, HURRICANE
	db 80, OVERHEAT ; Fiery Dance
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	db EVOLVE_LEVEL, 31, EXCADRILL
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, PURSUIT ; Rapid Spin
	db 8, MUD_SLAP
	db 12, FURY_STRIKES
	db 15, METAL_CLAW
	db 19, DIG
	db 22, CROSS_CUTTER
	db 26, SLASH
	db 29, ROCK_SLIDE
	db 33, EARTHQUAKE
	db 36, SWORDS_DANCE
	db 40, SANDSTORM
	db 43, IRON_HEAD ; Drill Run
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, PURSUIT ; Rapid Spin
	db 1, MUD_SLAP
	db 1, FURY_STRIKES
	db 5, PURSUIT ; Rapid Spin
	db 8, MUD_SLAP
	db 12, FURY_STRIKES
	db 15, METAL_CLAW
	db 19, DIG
	db 22, CROSS_CUTTER
	db 26, SLASH
	db 29, ROCK_SLIDE
	db 30, FATAL_BLOW
	db 36, EARTHQUAKE
	db 42, SWORDS_DANCE
	db 49, SANDSTORM
	db 55, IRON_HEAD ; Drill Run
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, ASTONISH ;Fake Out ----> New Move
	db 8, BITE 
	db 12, PAY_DAY
	db 16, FURY_STRIKES ;Fury Swipes ---> Fused Move
	db 20, FAINT_ATTACK ;Assurance ----> Similar type Move
	db 24, SCREECH
	db 29, SLASH
	db 32, THIEF
	db 36, NASTY_PLOT
	db 40, HYPNOTIZE
	db 44, PLAY_ROUGH
	db 48, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 4, ASTONISH ;Fake Out ----> New Move
	db 8, BITE 
	db 12, PAY_DAY
	db 16, FURY_STRIKES ;Fury Swipes ---> Fused Move
	db 20, FAINT_ATTACK ;Assurance ----> Similar type Move
	db 24, SCREECH
	db 31, SLASH
	db 36, THIEF
	db 42, NASTY_PLOT
	db 48, HYPNOTIZE
	db 54, PLAY_ROUGH
	db 60, NIGHT_SLASH
	db 0 ; no more level-up moves

WimpodEvosAttacks:
	db EVOLVE_LEVEL, 30, GOLISOPOD
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, METAL_CLAW
	db 1, SMOKESCREEN
	db 1, LEECH_LIFE
	db 0 ; no more level-up moves

GolisopodEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 1, METAL_CLAW
	db 1, SMOKESCREEN
	db 1, LEECH_LIFE
	db 4, ROCK_SMASH
	db 12, MUD_SLAP
	db 16, AQUA_JET
	db 20, IRON_DEFENSE
	db 22, SCREECH
	db 26, SLASH
	db 29, FIRST_IMPRESSION
	db 36, IRON_HEAD
	db 42, PIN_MISSILE
	db 48, SWORDS_DANCE
	db 53, WATERFALL
	db 0 ; no more level-up moves

PetililEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, LILLIGANT
	db EVOLVE_ITEM, HYPERSPACE_SUN_STONE, LILLIGANT_H
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 8, LEECH_SEED
	db 10, SLEEP_POWDER
	db 13, MEGA_DRAIN
	db 17, HEALING_LIGHT
	db 19, RAZOR_LEAF
	db 22, STUN_SPORE
	db 26, GIGA_DRAIN
	db 28, QUIVER_DANCE ; Aromatherapy
	db 31, SAFEGUARD ; Helping Hand
	db 35, ENERGY_BALL
	db 37, MINIMIZE ; Entrainment
	db 40, SUNNY_DAY
	db 44, ENCORE ; After You
	db 46, LEAF_STORM
	db 0 ; no more level-up moves

LilligantEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, LEECH_SEED
	db 1, MEGA_DRAIN
	db 1, HEALING_LIGHT
	db 10, SWEET_KISS ; Teeter Dance
	db 28, QUIVER_DANCE
	db 46, PETAL_DANCE
	db 50, LEAF_STORM
	db 0 ; no more level-up moves

LilligantHisuiEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, LEECH_SEED
	db 1, MEGA_DRAIN
	db 1, HEALING_LIGHT
	db 10, SWEET_KISS ; Teeter Dance
	db 28, VICTORY_DANCE
	db 46, PETAL_DANCE
	db 50, HI_JUMP_KICK
	db 0 ; no more level-up moves

OrthwormEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, WRAP
	db 7, MUD_SLAP
	db 12, BULLDOZE
	db 16, CURSE ;Egg move
	db 21, IRON_HEAD
	db 26, TAKE_DOWN
	db 30, DIG
	db 34, SANDSTORM
	db 38, ROCK_HEAD
	db 43, IRON_TAIL
	db 47, EARTHQUAKE
	db 52, SUBSTITUTE
	db 52, BATON_PASS
	db 0 ; no more level-up moves
	
MimikyuEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_EDGE
	db 1, SCRATCH
	db 1, ASTONISH
	db 1, SPLASH
	db 5, DOUBLE_TEAM
	db 10, SWEET_KISS
	db 14, NIGHT_SHADE
	db 19, CHARM
	db 23, FAINT_ATTACK
	db 28, PLAY_ROUGH
	db 32, SLASH
	db 37, SHADOW_CLAW
	db 41, NASTY_PLOT
	db 45, SHADOW_BALL
	db 48, PAIN_SPLIT
	db 0 ; no more level-up moves
	
SphealEvosAttacks:
	db EVOLVE_LEVEL, 32, SEALEO
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POWDER_SNOW
	db 1, GROWL
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 9, ENCORE
	db 13, ICY_WIND
	db 17, BUBBLEBEAM
	db 21, AURORA_BEAM
	db 26, BODY_SLAM
	db 31, REST ; + Snore
	db 36, ICE_BEAM
	db 41, BLIZZARD
	db 46, BELLY_DRUM ; Sheer Cold
	db 0 ; no more level-up moves

SealeoEvosAttacks:
	db EVOLVE_LEVEL, 44, WALREIN
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, POWDER_SNOW
	db 1, GROWL
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 9, ENCORE
	db 13, ICY_WIND
	db 17, BUBBLEBEAM
	db 21, AURORA_BEAM
	db 26, BODY_SLAM
	db 31, REST ; + Snore
	db 31, SWAGGER
	db 38, ICE_BEAM
	db 45, BLIZZARD
	db 52, BELLY_DRUM ; Sheer Cold
	db 0 ; no more level-up moves

WalreinEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWAGGER
	db 1, CRUNCH
	db 1, DEFENSE_CURL
	db 1, POWDER_SNOW
	db 1, GROWL
	db 1, WATER_GUN
	db 5, ROLLOUT
	db 9, ENCORE
	db 13, ICY_WIND
	db 17, BUBBLEBEAM
	db 21, AURORA_BEAM
	db 26, BODY_SLAM
	db 31, REST ; + Snore
	db 31, SWAGGER
	db 38, ICE_BEAM
	db 43, ICICLE_SPEAR
	db 49, BLIZZARD
	db 60, BELLY_DRUM ; Sheer Cold
	db 0 ; no more level-up moves

HatennaEvosAttacks:
	db EVOLVE_LEVEL, 32, HATTREM
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, GROWL
	db 5, FAIRY_WIND
	db 15, PSYBEAM
	db 20, SWIFT
	db 25, CHARM
	db 30, BATON_PASS
	db 35, DAZZLING_GLEAM
	db 40, PSYCHIC_M
	db 0 ; no more level-up moves

HattremEvosAttacks:
	db EVOLVE_LEVEL, 42, HATTERENE
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, GROWL
	db 5, FAIRY_WIND
	db 15, PSYBEAM
	db 20, SWIFT
	db 25, CHARM
	db 30, BATON_PASS
	db 31, FAINT_ATTACK
	db 37, DAZZLING_GLEAM
	db 44, PSYCHIC_M
	db 51, FUTURE_SIGHT
	db 0 ; no more level-up moves

HattereneEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, GROWL
	db 5, FAIRY_WIND
	db 15, PSYBEAM
	db 20, SWIFT
	db 25, CHARM
	db 30, BATON_PASS
	db 31, FAINT_ATTACK
	db 37, DAZZLING_GLEAM
	db 41, PSYCHO_CUT
	db 46, PSYCHIC_M
	db 55, FUTURE_SIGHT
	db 64, MOONBLAST
	db 0 ; no more level-up moves

DedenneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, THUNDERSHOCK
	db 5, CHARM
	db 10, THUNDER_WAVE
	db 15, BITE
	db 20, SPARK
	db 25, REST
	db 25, SLEEP_TALK
	db 30, PLAY_ROUGH
	db 35, THUNDERBOLT
	db 40, SUPER_FANG
	db 50, THUNDER
	db 0 ; no more level-up moves

GolettEvosAttacks:
	db EVOLVE_LEVEL, 43, GOLURK
	db 0 ; no more evolutions
	db 1, TACKLE ; Pound
	db 1, DEFENSE_CURL
	db 5, MUD_SLAP
	db 9, ROLLOUT
	db 13, ASTONISH
	db 17, IRON_DEFENSE
	db 21, BULLDOZE ; Stomping Tantrum
	db 25, SHADOW_CLAW ; Mega Punch
	db 30, BULK_UP
	db 35, PROTECT
	db 40, NIGHT_SHADE
	db 45, CURSE
	db 50, EARTHQUAKE
	db 55, HAMMER_ARM
	db 0 ; no more level-up moves

GolurkEvosAttacks:
	db 0 ; no more evolutions
	db 1, METEOR_MASH ; Heavy Slam
	db 1, TACKLE ; Pound
	db 1, DEFENSE_CURL
	db 1, MUD_SLAP
	db 1, LICK ; Astonish
	db 5, MUD_SLAP
	db 9, ROLLOUT
	db 13, ASTONISH
	db 17, IRON_DEFENSE
	db 21, BULLDOZE ; Stomping Tantrum
	db 25, SHADOW_CLAW ; Mega Punch
	db 30, BULK_UP
	db 35, PROTECT
	db 40, NIGHT_SHADE
	db 42, METEOR_MASH ; Heavy Slam
	db 47, CURSE
	db 54, EARTHQUAKE
	db 61, HAMMER_ARM
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 27, THIEF ;Knock Off ---> Similar Move
	db 29, SWEET_SCENT
	db 35, STRENGTH_SAP ;Gastro Acid ---> Egg Move
	db 39, RAZOR_LEAF
	db 41, POISON_JAB
	db 47, LEECH_LIFE
	db 52, LEAF_STORM ;Power Whip ----> Z-A Level Up
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db EVOLVE_ITEM, POISON_STONE, SWAVYBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 24, ACID
	db 29, THIEF ;Knock Off ---> Similar Move
	db 32, SWEET_SCENT
	db 39, STRENGTH_SAP ;Gastro Acid ---> Egg Move
	db 44, RAZOR_LEAF
	db 47, POISON_JAB
	db 54, LEECH_LIFE
	db 58, LEAF_STORM ;Power Whip ----> Z-A Level Up
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 1, RAZOR_LEAF
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 24, ACID
	db 29, THIEF ;Knock Off ---> Similar Move
	db 32, SWEET_SCENT
	db 39, STRENGTH_SAP ;Gastro Acid ---> Egg Move
	db 44, LEAF_BLADE
	db 47, POISON_JAB
	db 54, LEECH_LIFE
	db 58, LEAF_STORM ;Power Whip ----> Z-A Level Up
	db 0 ; no more level-up moves
	
SwayvybellEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 1, RAZOR_LEAF
	db 1, SWEET_KISS
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 24, ACID
	db 29, THIEF ;Knock Off ---> Similar Move
	db 32, SWEET_SCENT
	db 39, STRENGTH_SAP ;Gastro Acid ---> Egg Move
	db 44, LEAF_BLADE
	db 47, POISON_JAB
	db 54, LEECH_LIFE
	db 58, LEAF_STORM ;Power Whip ----> Z-A Level Up
	db 0 ; no more level-up moves	

AronEvosAttacks:
	db EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, MUD_SLAP
	db 7, HEADBUTT
	db 10, METAL_CLAW
	db 13, ROCK_THROW
	db 16, PROTECT
	db 19, SEND_AWAY
	db 22, IRON_HEAD
	db 25, ROCK_SLIDE
	db 28, TAKE_DOWN
	db 31, SCREECH ; Metal Sound
	db 34, IRON_TAIL
	db 37, IRON_DEFENSE
	db 40, DOUBLE_EDGE
	db 43, AGILITY ; Autotomize
	db 46, METEOR_MASH ; Heavy Slam
	db 0 ; no more level-up moves

LaironEvosAttacks:
	db EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 4, MUD_SLAP
	db 7, HEADBUTT
	db 10, METAL_CLAW
	db 13, ROCK_THROW
	db 16, PROTECT
	db 19, SEND_AWAY
	db 22, IRON_HEAD
	db 25, ROCK_SLIDE
	db 28, TAKE_DOWN
	db 31, SCREECH ; Metal Sound
	db 35, IRON_TAIL
	db 39, IRON_DEFENSE
	db 43, DOUBLE_EDGE
	db 47, AGILITY ; Autotomize
	db 51, METEOR_MASH ; Heavy Slam
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, MUD_SLAP
	db 1, HEADBUTT
	db 4, MUD_SLAP
	db 7, HEADBUTT
	db 10, METAL_CLAW
	db 13, ROCK_THROW
	db 16, PROTECT
	db 19, SEND_AWAY
	db 22, IRON_HEAD
	db 25, ROCK_SLIDE
	db 28, TAKE_DOWN
	db 31, SCREECH ; Metal Sound
	db 35, IRON_TAIL
	db 39, IRON_DEFENSE
	db 45, DOUBLE_EDGE
	db 51, AGILITY ; Autotomize
	db 57, METEOR_MASH ; Heavy Slam
	db 0 ; no more level-up moves

DarumakaEvosAttacks:
	db EVOLVE_LEVEL, 35, DARMANITAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 3, ROLLOUT
	db 6, EMBER ; Incinerate
	db 9, FURY_STRIKES ; Rage
	db 11, FLAME_WHEEL
	db 14, HEADBUTT
	db 17, SCREECH ; Uproar
	db 19, TAKE_DOWN ; Facade
	db 22, FIRE_PUNCH
	db 25, BULK_UP ; Work Up
	db 27, BODY_SLAM ; Thrash
	db 30, BELLY_DRUM
	db 33, RAGING_FURY
	db 36, SWAGGER ; Taunt
	db 39, OVERHEAT ;Superpower
	db 0 ; no more level-up moves

DarmanitanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HAMMER_ARM
	db 1, TACKLE
	db 1, ROLLOUT
	db 1, EMBER ; Incinerate
	db 1, FURY_STRIKES ; Rage
	db 3, ROLLOUT
	db 6, EMBER ; Incinerate
	db 9, FURY_STRIKES ; Rage
	db 11, FLAME_WHEEL
	db 14, HEADBUTT
	db 17, SCREECH ; Uproar
	db 19, TAKE_DOWN ; Facade
	db 22, FIRE_PUNCH
	db 25, BULK_UP ; Work Up
	db 27, BODY_SLAM ; Thrash
	db 30, BELLY_DRUM
	db 33, RAGING_FURY
	db 34, HAMMER_ARM
	db 39, SWAGGER ; Taunt
	db 47, OVERHEAT ; Superpower
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 3, GROWL
	db 6, WATER_GUN
	db 9, CONFUSION
	db 12, DISABLE
	db 15, BUBBLEBEAM
	db 18, HEADBUTT
	db 21, PSYBEAM
	db 24, AMNESIA
	db 27, SURF
	db 30, RECOVER ;Slack Off ----> Similar Move
	db 33, PSYCHIC_M
	db 36, CALM_MIND
	db 39, RAIN_DANCE
	db 42, REST
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 3, GROWL
	db 6, WATER_GUN
	db 9, CONFUSION
	db 12, DISABLE
	db 15, BUBBLEBEAM
	db 18, HEADBUTT
	db 21, PSYBEAM
	db 24, AMNESIA
	db 27, SURF
	db 30, RECOVER ;Slack Off ----> Similar Move
	db 33, PSYCHIC_M
	db 36, CALM_MIND
	db 36, HARDEN
	db 41, RAIN_DANCE
	db 46, REST
	db 51, FUTURE_SIGHT
	db 0 ; no more level-up moves
	
SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, NASTY_PLOT
	db 3, GROWL
	db 6, WATER_GUN
	db 9, CONFUSION
	db 12, DISABLE
	db 15, BUBBLEBEAM
	db 18, HEADBUTT
	db 21, PSYBEAM
	db 24, AMNESIA
	db 27, SURF
	db 30, RECOVER ;Slack Off ----> Similar Move
	db 33, PSYCHIC_M
	db 36, CALM_MIND
	db 36, SWAGGER
	db 41, RAIN_DANCE
	db 46, REST
	db 51, FUTURE_SIGHT
	db 0 ; no more level-up moves
	
MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 4, CONFUSE_RAY
	db 8, THUNDER_WAVE
	db 12, LIGHT_SCREEN
	db 16, SPARK
	db 20, SCREECH
	db 24, IRON_DEFENSE
	db 28, SWIFT
	db 32, FLASH_CANNON
	db 36, THUNDERBOLT
	db 40, LOCK_ON
	db 44, ZAP_CANNON
	db 48, THUNDER
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, CONFUSE_RAY
	db 1, THUNDER_WAVE
	db 12, LIGHT_SCREEN
	db 16, SPARK
	db 20, SCREECH
	db 24, IRON_DEFENSE
	db 28, SWIFT
	db 29, TRI_ATTACK
	db 34, FLASH_CANNON
	db 40, THUNDERBOLT
	db 46, LOCK_ON
	db 52, ZAP_CANNON
	db 58, THUNDER
	db 0 ; no more level-up moves
	
MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, CONFUSE_RAY
	db 1, THUNDER_WAVE
	db 12, LIGHT_SCREEN
	db 16, SPARK
	db 20, SCREECH
	db 24, IRON_DEFENSE
	db 28, SWIFT
	db 29, TRI_ATTACK
	db 34, FLASH_CANNON
	db 40, THUNDERBOLT
	db 46, LOCK_ON
	db 52, ZAP_CANNON
	db 58, THUNDER
	db 0 ; no more level-up moves	

FarfetchDEvosAttacks:
	db EVOLVE_ITEM, HEART_STONE, LUXWAN
	db 0 ; no more evolutions
	db 1, PECK
	db 1, DISARM
	db 5, SMOKESCREEN
	db 10, CROSS_CUTTER
	db 15, CUT
	db 20, AERIAL_ACE
	db 25, THIEF
	db 30, FALSE_SWIPE
	db 35, SLASH
	db 40, SWORDS_DANCE
	db 45, AIR_SLASH
	db 50, LEAF_BLADE
	db 55, AGILITY
	db 60, BRAVE_BIRD
	db 0 ; no more level-up moves
	
LuxwanEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, DISARM
	db 5, SMOKESCREEN
	db 10, CROSS_CUTTER
	db 15, CUT
	db 20, AERIAL_ACE
	db 25, THIEF
	db 30, FALSE_SWIPE
	db 35, SLASH
	db 40, SWORDS_DANCE
	db 45, AIR_SLASH
	db 50, LEAF_BLADE
	db 55, AGILITY
	db 60, BRAVE_BIRD
	db 0 ; no more level-up moves	

ChatotEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 5, GROWL
	db 9, SWIFT
	db 13, HYPNOTIZE
	db 17, FURY_STRIKES
	db 21, WING_ATTACK
	db 25, CONFUSE_RAY
	db 28, CHATTER
	db 33, STEEL_WING
	db 37, DRILL_PECK
	db 41, REST
	db 46, AERIAL_ACE
	db 55, BRAVE_BIRD
	db 0 ; no more level-up moves

HawluchaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, ROCK_SMASH
	db 4, WING_ATTACK
	db 8, PROTECT
	db 12, ENCORE
	db 20, DOUBLE_KICK
	db 24, AGILITY
	db 26, BODY_SLAM
	db 28, ENDURE
	db 32, SWAGGER
	db 36, FLY
	db 40, SWORDS_DANCE
	db 44, HI_JUMP_KICK
	db 50, BRAVE_BIRD
	db 0 ; no more level-up moves

WailmerEvosAttacks:
	db EVOLVE_LEVEL, 40, WAILORD
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, GROWL
	db 3, GROWL
	db 6, ASTONISH
	db 12, WATER_GUN
	db 15, MIST
	db 18, BUBBLEBEAM
	db 21, ROLLOUT
	db 24, TAKE_DOWN
	db 27, WHIRLPOOL
	db 30, DIVE
	db 33, BODY_SLAM
	db 36, REST
	db 39, AMNESIA
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

WailordEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, GROWL
	db 3, GROWL
	db 6, ASTONISH
	db 12, WATER_GUN
	db 15, MIST
	db 18, BUBBLEBEAM
	db 21, ROLLOUT
	db 24, TAKE_DOWN
	db 27, WHIRLPOOL
	db 30, DIVE
	db 33, BODY_SLAM
	db 36, REST
	db 39, AMNESIA
	db 39, SEND_AWAY
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

SkrelpEvosAttacks:
	db EVOLVE_LEVEL, 48, DRAGALGE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 1, WATER_GUN
	db 5, FAINT_ATTACK
	db 9, DISARM
	db 12, WRAP
	db 15, ACID
	db 19, MINIMIZE
	db 25, BUBBLEBEAM
	db 32, TOXIC
	db 35, DRAGONBREATH
	db 42, HYDRO_PUMP
	db 49, DRAGON_PULSE
	db 0 ; no more level-up moves

DragalgeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 1, WATER_GUN
	db 1, DRAGON_PULSE
	db 5, FAINT_ATTACK
	db 9, DISARM
	db 12, WRAP
	db 15, ACID
	db 19, MINIMIZE
	db 25, BUBBLEBEAM
	db 32, TOXIC
	db 35, DRAGONBREATH
	db 42, HYDRO_PUMP
	db 47, SLUDGE_BOMB
	db 53, DRAGON_PULSE
	db 59, OUTRAGE
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 4, HARDEN
	db 8, DISARM
	db 12, WHIRLPOOL
	db 16, CONFUSE_RAY
	db 20, AURORA_BEAM
	db 24, PROTECT
	db 32, BUBBLEBEAM
	db 36, IRON_DEFENSE
	db 40, ICE_BEAM
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 1, ICICLE_SPEAR
	db 1, SPIKES
	db 4, HARDEN
	db 8, DISARM
	db 12, WHIRLPOOL
	db 16, CONFUSE_RAY
	db 20, AURORA_BEAM
	db 24, PROTECT
	db 32, BUBBLEBEAM
	db 36, IRON_DEFENSE
	db 40, ICE_BEAM
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

TurbannEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 1, BITE
	db 1, SPIKES
	db 4, HARDEN
	db 8, DISARM
	db 12, WHIRLPOOL
	db 16, POISON_GAS
	db 20, BODY_SLAM
	db 24, PROTECT
	db 32, BUBBLEBEAM
	db 36, IRON_DEFENSE
	db 40, CRUNCH
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, LICK
	db 4, HYPNOTIZE
	db 8, BLOCK
	db 12, FAINT_ATTACK
	db 16, SPITE
	db 20, CURSE
	db 24, NIGHT_SHADE
	db 28, HAZE
	db 32, ICY_WIND
	db 36, DARK_PULSE
	db 40, SHADOW_BALL
	db 44, DESTINY_BOND
	db 48, PERISH_SONG
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_TRADE, -1, GENGAR
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, LICK
	db 1, HYPNOTIZE
	db 1, BLOCK
	db 12, FAINT_ATTACK
	db 16, SPITE
	db 20, CURSE
	db 24, NIGHT_SHADE
	db 24, SHADOW_CLAW
	db 30, HAZE
	db 36, ICY_WIND
	db 42, DARK_PULSE
	db 48, SHADOW_BALL
	db 54, DESTINY_BOND
	db 60, PERISH_SONG
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, LICK
	db 1, HYPNOTIZE
	db 1, BLOCK
	db 12, FAINT_ATTACK
	db 16, SPITE
	db 20, CURSE
	db 24, NIGHT_SHADE
	db 24, SHADOW_CLAW
	db 30, HAZE
	db 36, ICY_WIND
	db 42, DARK_PULSE
	db 48, SHADOW_BALL
	db 54, DESTINY_BOND
	db 60, PERISH_SONG
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSE_RAY
	db 1, DISARM
	db 1, QUICK_ATTACK
	db 10, THIEF
	db 15, PROTECT
	db 20, SWORDS_DANCE
	db 23, SLASH
	db 27, NIGHT_SLASH
	db 32, DOUBLE_TEAM
	db 36, SWAGGER
	db 40, SHADOW_CLAW
	db 43, FOCUS_ENERGY
	db 46, AIR_SLASH
	db 48, FUTURE_SIGHT
	db 54, PERISH_SONG
	db 0 ; no more level-up moves

InkayEvosAttacks:
	db EVOLVE_LEVEL, 30, MALAMAR
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TACKLE
	db 3, HYPNOTIZE
	db 6, WRAP
	db 9, FAINT_ATTACK
	db 12, PSYBEAM
	db 15, SWAGGER
	db 18, SLASH
	db 21, NIGHT_SLASH
	db 24, PSYCHO_CUT
	db 27, THIEF
	db 31, DRILL_PECK
	db 33, NASTY_PLOT
	db 0 ; no more level-up moves

MalamarEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TACKLE
	db 3, HYPNOTIZE
	db 6, WRAP
	db 9, FAINT_ATTACK
	db 12, PSYBEAM
	db 15, SWAGGER
	db 18, SLASH
	db 21, NIGHT_SLASH
	db 24, PSYCHO_CUT
	db 27, THIEF
	db 33, DRILL_PECK
	db 37, NASTY_PLOT
	db 42, DARK_PULSE
	db 47, PSYCHIC_M
	db 0 ; no more level-up moves

ClauncherEvosAttacks:
	db EVOLVE_LEVEL, 37, CLAWITZER
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, WATER_GUN
	db 10, PIERCE
	db 13, AQUA_JET
	db 16, MUD_SLAP
	db 24, FLAIL
	db 30, BUBBLEBEAM
	db 34, SWORDS_DANCE
	db 40, CRABHAMMER
	db 45, MUDDY_WATER
	db 48, DRAGON_PULSE
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

ClawitzerEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, WATER_GUN
	db 10, PIERCE
	db 13, AQUA_JET
	db 16, MUD_SLAP
	db 24, FLAIL
	db 30, BUBBLEBEAM
	db 34, SWORDS_DANCE
	db 40, CRABHAMMER
	db 45, MUDDY_WATER
	db 48, DRAGON_PULSE
	db 52, HYDRO_PUMP
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

ImpidimpEvosAttacks:
	db EVOLVE_LEVEL, 32, IMPIDIMP
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GROWL
	db 8, THIEF
	db 16, SWAGGER
	db 24, NASTY_PLOT
	db 28, FAINT_ATTACK
	db 33, PLAY_ROUGH
	db 41, DAZZLING_GLEAM
	db 49, CRUNCH
	db 0 ; no more level-up moves

MorgremEvosAttacks:
	db EVOLVE_LEVEL, 42, GRIMMSNARL
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GROWL
	db 8, THIEF
	db 16, SWAGGER
	db 24, NASTY_PLOT
	db 28, FAINT_ATTACK
	db 34, PLAY_ROUGH
	db 43, DAZZLING_GLEAM
	db 52, CRUNCH
	db 0 ; no more level-up moves

GrimmsnarlEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GROWL
	db 8, THIEF
	db 16, SWAGGER
	db 24, NASTY_PLOT
	db 28, FAINT_ATTACK
	db 34, PLAY_ROUGH
	db 48, DAZZLING_GLEAM
	db 56, CRUNCH
	db 64, HAMMER_ARM
	db 0 ; no more level-up moves

SpiritombEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, PURSUIT
	db 1, CONFUSE_RAY
	db 1, ASTONISH
	db 7, FAINT_ATTACK
	db 13, HYPNOTIZE
	db 19, SPITE
	db 25, NIGHT_SHADE ; Ominous Wind
	db 31, SWAGGER
	db 37, NASTY_PLOT
	db 43, DESTINY_BOND ; Memento
	db 49, DARK_PULSE
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, MUD_SLAP
	db 4, DISARM
	db 8, FALSE_SWIPE
	db 12, HEADBUTT
	db 16, PROTECT
	db 20, BULLDOZE
	db 24, FOCUS_ENERGY
	db 29, ROCK_HEAD
	db 33, BODY_SLAM
	db 37, BONEMERANG
	db 41, SWORDS_DANCE
	db 45, DOUBLE_EDGE
	db 49, THRASH
	db 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, MUD_SLAP
	db 4, DISARM
	db 8, FALSE_SWIPE
	db 12, HEADBUTT
	db 16, PROTECT
	db 20, BULLDOZE
	db 24, FOCUS_ENERGY
	db 32, ROCK_HEAD
	db 40, BODY_SLAM
	db 44, BONEMERANG
	db 48, SWORDS_DANCE
	db 55, DOUBLE_EDGE
	db 59, THRASH
	db 66, DOUBLE_EDGE
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 5, DRAINING_KISS
	db 10, CHARM
	db 15, SAFEGUARD
	db 20, DRAGONBREATH
	db 25, PSYBEAM
	db 30, CALM_MIND
	db 35, PSYCHIC_M
	db 40, RECOVER
	db 45, DRAGON_PULSE
	db 50, MIST_BALL
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 5, GUST
	db 10, AGILITY
	db 15, SAFEGUARD
	db 20, DRAGONBREATH
	db 25, PSYBEAM
	db 30, CALM_MIND
	db 35, PSYCHIC_M
	db 40, RECOVER
	db 45, DRAGON_PULSE
	db 50, LUSTER_PURGE
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db EVOLVE_MOVE, SWAGGER, LICKIKING
	db 0 ; no more evolutions
	db 1, LICK
	db 1, DEFENSE_CURL
	db 6, ROLLOUT
	db 12, CONFUSE_RAY
	db 18, WRAP
	db 24, DISABLE
	db 30, STOMP
	db 32, SWAGGER
	db 36, THIEF
	db 42, SCREECH
	db 48, BODY_SLAM
	db 54, DOUBLE_EDGE
	db 60, BELLY_DRUM
	db 0 ; no more level-up moves

LickikingEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, ACID
	db 1, TOXIC
	db 1, DEFENSE_CURL
	db 6, ROLLOUT
	db 12, CONFUSE_RAY
	db 18, WRAP
	db 24, DISABLE
	db 30, STOMP
	db 31, SLUDGE_BOMB
	db 32, SWAGGER
	db 36, THIEF
	db 42, SCREECH
	db 48, BODY_SLAM
	db 54, DOUBLE_EDGE
	db 60, BELLY_DRUM
	db 66, GUNK_SHOT
	db 0 ; no more level-up moves

VaroomEvosAttacks:
	db EVOLVE_LEVEL, 40, REVAVROOM
	db 0 ; no more evolutions
	db 1, LICK
	db 1, POISON_GAS
	db 4, ACID
	db 7, SLUDGE
	db 10, MUD_SLAP
	db 13, HAZE
	db 17, HEADBUTT
	db 21, FLAME_WHEEL ;OVERHEAT
	db 25, SCREECH
	db 28, IRON_HEAD
	db 32, SWAGGER
	db 36, SLUDGE_BOMB
	db 41, GUNK_SHOT
	db 46, SELFDESTRUCT
	db 0 ; no more level-up moves

RevavroomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, POISON_GAS
	db 4, ACID
	db 7, SLUDGE
	db 10, MUD_SLAP
	db 13, HAZE
	db 17, HEADBUTT
	db 21, FLAME_WHEEL ;OVERHEAT
	db 25, SCREECH
	db 28, IRON_HEAD
	db 32, SWAGGER
	db 36, SLUDGE_BOMB
	db 46, GUNK_SHOT
	db 52, SELFDESTRUCT
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, FURY_STRIKES
	db 5, ROCK_THROW
	db 10, BULLDOZE
	db 15, PIERCE
	db 20, SCARY_FACE
	db 25, STOMP
	db 30, ROCK_SLIDE
	db 35, TAKE_DOWN
	db 40, ROCK_HEAD
	db 45, EARTHQUAKE
	db 50, MEGAHORN
	db 55, FATAL_BLOW
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db EVOLVE_ITEM, PROTECTOR, RHYPERIOR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, FURY_STRIKES
	db 5, ROCK_THROW
	db 10, BULLDOZE
	db 15, PIERCE
	db 20, SCARY_FACE
	db 25, STOMP
	db 30, ROCK_SLIDE
	db 35, TAKE_DOWN
	db 40, ROCK_HEAD
	db 47, EARTHQUAKE
	db 54, MEGAHORN
	db 61, FATAL_BLOW
	db 0 ; no more level-up moves
	
RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, FURY_STRIKES
	db 5, ROCK_THROW
	db 10, BULLDOZE
	db 15, PIERCE
	db 20, SCARY_FACE
	db 25, STOMP
	db 30, ROCK_SLIDE
	db 35, TAKE_DOWN
	db 40, ROCK_HEAD
	db 47, EARTHQUAKE
	db 54, MEGAHORN
	db 61, FATAL_BLOW
	db 0 ; no more level-up moves	

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, SWEET_KISS
	db 1, DISARM
	db 4, HYPNOTIZE
	db 8, DRAINING_KISS
	db 12, CHARM
	db 16, METRONOME
	db 20, THIEF ;Covet ---> Similar Move
	db 24, TAKE_DOWN
	db 28, RECOVER
	db 32, SEISMIC_TOSS
	db 36, LIGHT_SCREEN
	db 40, DOUBLE_EDGE
	db 44, CALM_MIND
	db 48, MINIMIZE
	db 0 ; no more level-up moves
	
BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, SWEET_KISS
	db 1, DISARM
	db 4, HYPNOTIZE
	db 8, DRAINING_KISS
	db 12, CHARM
	db 16, METRONOME
	db 20, THIEF ;Covet ---> Similar Move
	db 24, TAKE_DOWN
	db 28, RECOVER
	db 32, SEISMIC_TOSS
	db 36, LIGHT_SCREEN
	db 40, DOUBLE_EDGE
	db 44, CALM_MIND
	db 48, MINIMIZE
	db 0 ; no more level-up moves
	

TangelaEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, TANGOREST
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, WRAP
	db 4, STUN_SPORE
	db 8, GROWTH
	db 12, MEGA_DRAIN
	db 16, VINE_WHIP
	db 20, POISONPOWDER
	db 24, ANCIENTPOWER
	db 28, THIEF
	db 32, GIGA_DRAIN
	db 36, SLEEP_POWDER
	db 40, BODY_SLAM
	db 44, ENERGY_BALL
	db 48, LEAF_STORM
	db 0 ; no more level-up moves
	
TangorestEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, WRAP
	db 1, SCARY_FACE
	db 4, STUN_SPORE
	db 8, GROWTH
	db 12, MEGA_DRAIN
	db 16, VINE_WHIP
	db 20, POISONPOWDER
	db 24, ANCIENTPOWER
	db 28, THIEF
	db 32, GIGA_DRAIN
	db 36, SLEEP_POWDER
	db 40, BODY_SLAM
	db 44, ENERGY_BALL
	db 48, LEAF_STORM
	db 52, CRUNCH
	db 0 ; no more level-up moves	

BomseekerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, POISON_GAS
	db 8, EMBER
	db 13, WATER_GUN
	db 20, ENCORE
	db 25, CONFUSE_RAY
	db 32, FLAME_WHEEL
	db 37, BUBBLEBEAM
	db 44, FLAMETHROWER
	db 49, BODY_SLAM
	db 56, FIRE_BLAST
	db 61, HYDRO_PUMP
	db 0 ; no more level-up moves

CorasunEvosAttacks:
	db EVOLVE_MOVE, IRON_DEFENSE, ANCHORAGE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 6, DEFENSE_CURL
	db 10, CONFUSE_RAY
	db 15, BUBBLEBEAM
	db 19, SCREECH
	db 24, BODY_SLAM
	db 28, IRON_DEFENSE
	db 33, HEALING_LIGHT
	db 37, SURF
	db 42, DOUBLE_EDGE
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

AnchorageEvosAttacks:
	db EVOLVE_MOVE, DARK_PULSE, GROTESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 6, DEFENSE_CURL
	db 10, CONFUSE_RAY
	db 15, BUBBLEBEAM
	db 19, SCREECH
	db 24, BODY_SLAM
	db 27, IRON_TAIL
	db 34, IRON_DEFENSE
	db 39, DARK_PULSE
	db 45, SURF
	db 50, CRUNCH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GrotessEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 6, DEFENSE_CURL
	db 10, CONFUSE_RAY
	db 15, BUBBLEBEAM
	db 19, SCREECH
	db 24, BODY_SLAM
	db 27, IRON_TAIL
	db 34, IRON_DEFENSE
	db 38, SCARY_FACE
	db 39, DARK_PULSE
	db 49, SURF
	db 56, CRUNCH
	db 63, HYDRO_PUMP
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, TACKLE
	db 4, WATER_GUN
	db 8, CONFUSE_RAY
	db 12, RAPID_SPIN
	db 16, MINIMIZE
	db 20, SWIFT
	db 24, PSYBEAM
	db 28, BUBBLEBEAM
	db 32, LIGHT_SCREEN
	db 36, PSYCHIC_M
	db 40, SURF
	db 44, RECOVER
	db 48, ICE_BEAM
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, TACKLE
	db 4, WATER_GUN
	db 8, CONFUSE_RAY
	db 12, RAPID_SPIN
	db 16, MINIMIZE
	db 20, SWIFT
	db 24, PSYBEAM
	db 28, BUBBLEBEAM
	db 32, LIGHT_SCREEN
	db 36, PSYCHIC_M
	db 40, SURF
	db 44, RECOVER
	db 48, ICE_BEAM
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, QUICK_ATTACK
	db 4, CROSS_CUTTER
	db 8, FALSE_SWIPE
	db 12, WING_ATTACK
	db 16, DOUBLE_TEAM
	db 20, FOCUS_ENERGY
	db 24, SLASH
	db 28, AGILITY
	db 32, NIGHT_SLASH
	db 36, AIR_SLASH
	db 40, X_SCISSOR
	db 44, SWORDS_DANCE
	db 0 ; no more level-up moves

JoltikEvosAttacks:
	db EVOLVE_LEVEL, 36, GALVANTULA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SLOW_DOWN
	db 4, THUNDER_WAVE
	db 7, SCREECH
	db 12, CROSS_CUTTER
	db 15, SPARK
	db 18, ACID
	db 23, LEECH_LIFE
	db 26, SLASH
	db 29, THUNDERBOLT
	db 34, X_SCISSOR
	db 37, AGILITY
	db 40, FIRST_IMPRESSION
	db 45, THUNDER
	db 48, BUG_BUZZ
	db 0 ; no more level-up moves

GalvantulaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SLOW_DOWN
	db 1, THUNDER_WAVE
	db 1, SCREECH
	db 4, THUNDER_WAVE
	db 7, SCREECH
	db 12, CROSS_CUTTER
	db 15, SPARK ; Electroweb
	db 18, ACID
	db 23, LEECH_LIFE
	db 26, SLASH
	db 29, THUNDERBOLT ; Electro Ball
	db 34, X_SCISSOR
	db 40, AGILITY
	db 46, FIRST_IMPRESSION
	db 54, THUNDER
	db 60, BUG_BUZZ
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, PRAXE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, PIERCE
	db 4, FOCUS_ENERGY
	db 8, WRAP
	db 12, SEISMIC_TOSS
	db 16, CROSS_CUTTER
	db 20, ROCK_SMASH
	db 24, PROTECT
	db 28, TAKE_DOWN
	db 32, X_SCISSOR
	db 36, STRENGTH
	db 40, SWORDS_DANCE
	db 44, DOUBLE_EDGE
	db 48, FATAL_BLOW
	db 52, HAMMER_ARM
	db 0 ; no more level-up moves

PraxeEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, PIERCE
	db 1, IRON_HEAD
	db 4, FOCUS_ENERGY
	db 8, WRAP
	db 12, SEISMIC_TOSS
	db 16, CROSS_CUTTER
	db 20, ROCK_SMASH
	db 24, PROTECT
	db 28, TAKE_DOWN
	db 32, X_SCISSOR
	db 36, STRENGTH
	db 40, SWORDS_DANCE
	db 44, DOUBLE_EDGE
	db 48, FATAL_BLOW
	db 52, HAMMER_ARM
	db 0 ; no more level-up moves


MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 25, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 1, SPLASH
	db 1, TACKLE
	db 1, FLAIL
	db 1, GUST
	db 1, DISARM
	db 19, BITE
	db 21, SCARY_FACE
	db 24, WHIRLPOOL
	db 28, RAIN_DANCE
	db 32, WATERFALL
	db 36, CRUNCH
	db 40, HYDRO_PUMP
	db 44, HURRICANE
	db 48, THRASH
	db 52, HYPER_BEAM
	db 0 ; no more level-up moves

FalinksEvosAttacks:
	db 0 ; no more evolutions
	db 1, PROTECT
	db 1, TACKLE
	db 5, ROCK_SMASH
	db 10, FOCUS_ENERGY
	db 15, HEADBUTT
	db 20, BULK_UP
	db 25, ENDURE
	db 30, REVERSAL
	db 35, FIRST_IMPRESSION
	db 40, SWORDS_DANCE
	db 45, IRON_DEFENSE
	db 50, HAMMER_ARM
	db 55, MEGAHORN
	db 60, COUNTER
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db EVOLVE_HOLD, METAL_POWDER, TR_ANYTIME, METTO
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

MettoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves


EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 5, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 15, GROWL
	db 20, SWIFT
	db 25, BITE
	db 30, TAKE_DOWN
	db 35, BATON_PASS
	db 40, CHARM
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, SWIFT
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, AURORA_BEAM
	db 5, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 15, GROWL
	db 20, WATER_GUN
	db 25, BITE
	db 30, BUBBLEBEAM
	db 35, BATON_PASS
	db 40, CHARM
	db 45, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, SWIFT
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, PIN_MISSILE
	db 5, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 15, GROWL
	db 20, THUNDERSHOCK
	db 25, BITE
	db 30, SPARK
	db 35, BATON_PASS
	db 40, CHARM
	db 45, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, SWIFT
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, FIRE_SPIN
	db 5, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 15, GROWL
	db 20, EMBER
	db 25, BITE
	db 30, FLAME_WHEEL
	db 35, BATON_PASS
	db 40, CHARM
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONFUSE_RAY
	db 10, AGILITY
	db 15, THUNDERSHOCK
	db 20, PSYBEAM
	db 25, SPARK
	db 30, TAKE_DOWN
	db 35, RECOVER
	db 40, LOCK_ON
	db 45, TRI_ATTACK
	db 50, ZAP_CANNON
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves

TirtougaEvosAttacks:
	db EVOLVE_LEVEL, 37, CARRACOSTA
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, DEFENSE_CURL ; Withdraw
	db 5, ROLLOUT
	db 8, BITE
	db 11, PROTECT
	db 15, AQUA_JET
	db 18, ANCIENTPOWER
	db 21, CRUNCH
	db 25, SAFEGUARD ; Wide Guard
	db 31, ROCK_HEAD ; Smack Down
	db 35, CURSE
	db 38, BELLY_DRUM ; Shell Smash
	db 41, WATERFALL
	db 45, ROCK_SLIDE
	db 48, RAIN_DANCE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

CarracostaEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, DEFENSE_CURL ; Withdraw
	db 1, ROLLOUT
	db 1, BITE
	db 5, ROLLOUT
	db 8, BITE
	db 11, PROTECT
	db 15, AQUA_JET
	db 18, ANCIENTPOWER
	db 21, CRUNCH
	db 25, SAFEGUARD ; Wide Guard
	db 31, ROCK_HEAD ; Smack Down
	db 35, CURSE
	db 40, BELLY_DRUM ; Shell Smash
	db 45, WATERFALL
	db 51, ROCK_SLIDE
	db 56, RAIN_DANCE
	db 61, HYDRO_PUMP
	db 0 ; no more level-up moves

ArchenEvosAttacks:
	db EVOLVE_LEVEL, 37, ARCHEOPS
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, DISARM
	db 5, ROCK_THROW
	db 8, DOUBLE_TEAM
	db 11, SCARY_FACE
	db 15, WING_ATTACK ; Pluck
	db 18, ANCIENTPOWER
	db 21, AGILITY
	db 25, PROTECT ; Quick Guard
	db 28, AERIAL_ACE
	db 31, DRAGONBREATH
	db 35, CRUNCH
	db 38, BODY_SLAM ; Endeavor
	db 41, BRAVE_BIRD ; U-turn
	db 45, ROCK_SLIDE
	db 48, DRAGON_CLAW
	db 50, OUTRAGE ; Thrash
	db 0 ; no more level-up moves

ArcheopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, DISARM
	db 1, ROCK_THROW
	db 1, WING_ATTACK
	db 5, ROCK_THROW
	db 8, DOUBLE_TEAM
	db 11, SCARY_FACE
	db 15, WING_ATTACK ; Pluck
	db 18, ANCIENTPOWER
	db 21, AGILITY
	db 25, PROTECT ; Quick Guard
	db 28, AERIAL_ACE
	db 31, DRAGONBREATH
	db 35, CRUNCH
	db 40, BODY_SLAM ; Endeavor
	db 45, BRAVE_BIRD ; U-turn
	db 51, ROCK_SLIDE
	db 56, DRAGON_CLAW
	db 61, OUTRAGE ; Thrash
	db 0 ; no more level-up moves

TyruntEvosAttacks:
	db EVOLVE_LEVEL, 39, TYRANTRUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 4, SEND_AWAY
	db 8, ROCK_THROW
	db 12, CHARM
	db 16, BITE
	db 20, STOMP
	db 24, ANCIENTPOWER
	db 28, ROCK_SLIDE
	db 32, CRUNCH
	db 36, DRAGON_PULSE
	db 44, THRASH
	db 48, EARTHQUAKE
	db 52, FATAL_BLOW
	db 0 ; no more level-up moves

TyrantrumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 4, SEND_AWAY
	db 8, ROCK_THROW
	db 12, CHARM
	db 16, BITE
	db 20, STOMP
	db 24, ANCIENTPOWER
	db 28, ROCK_SLIDE
	db 32, CRUNCH
	db 36, DRAGON_PULSE
	db 44, THRASH
	db 52, EARTHQUAKE
	db 58, FATAL_BLOW
	db 0 ; no more level-up moves

AmauraEvosAttacks:
	db EVOLVE_LEVEL, 39, AURORUS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POWDER_SNOW
	db 10, ROCK_THROW
	db 12, ICY_WIND
	db 16, TAKE_DOWN
	db 20, MIST
	db 24, ANCIENTPOWER
	db 28, THUNDER_WAVE
	db 36, AURORA_BEAM
	db 40, ICE_BEAM
	db 44, LIGHT_SCREEN
	db 48, ENCORE
	db 52, HYPER_BEAM
	db 56, BLIZZARD
	db 0 ; no more level-up moves

AurorusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, POWDER_SNOW
	db 10, ROCK_THROW
	db 12, ICY_WIND
	db 16, TAKE_DOWN
	db 20, MIST
	db 24, ANCIENTPOWER
	db 28, THUNDER_WAVE
	db 36, AURORA_BEAM
	db 44, ICE_BEAM
	db 52, LIGHT_SCREEN
	db 56, ENCORE
	db 64, HYPER_BEAM
	db 70, BLIZZARD
	db 0 ; no more level-up moves
	
RagingBoltEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP
	db 1, DISARM ;Leer ---> Fused Move
	db 1, GUST
	db 7, SUNNY_DAY
	db 14, THUNDERSHOCK
	db 21, SEND_AWAY
	db 28, DRAGONBREATH
	db 35, THUNDERBOLT
	db 42, DRAGON_PULSE
	db 49, THUNDERCLAP
	db 56, OUTRAGE
	db 63, BODY_SLAM
	db 70, CALM_MIND
	db 77, ZAP_CANNON
	db 84, THUNDER
	db 91, DRACO_METEOR
	db 0 ; no more level-up moves

GougingFireEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, DISARM
	db 1, HOWL
	db 7, SUNNY_DAY
	db 14, FLAME_WHEEL
	db 21, SEND_AWAY
	db 28, DRAGONBREATH
	db 35, FLAMETHROWER
	db 42, DRAGON_CLAW
	db 49, BURNING_BULWARK
	db 56, OUTRAGE
	db 63, ROCK_HEAD
	db 70, IRON_DEFENSE ;A move that could maybe fit Gouging Fire's Design
	db 77, RAGING_FURY
	db 84, FIRE_BLAST
	db 91, DRACO_METEOR
	db 0 ; no more level-up moves

WalkingWakeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, DISARM
	db 1, GUST
	db 7, SUNNY_DAY
	db 14, WATER_GUN
	db 21, SEND_AWAY
	db 28, DRAGONBREATH
	db 35, AURORA_BEAM
	db 42, DRAGON_PULSE
	db 49, HYDRO_STEAM
	db 56, OUTRAGE
	db 63, FLAMETHROWER
	db 70, AGILITY
	db 77, HYDRO_PUMP
	db 84, HURRICANE
	db 91, DRACO_METEOR
	db 0 ; no more level-up moves

GibleEvosAttacks:
	db EVOLVE_LEVEL, 24, GABITE
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, TACKLE
	db 6, SMOKESCREEN
	db 12, DRAGONBREATH
	db 18, BULLDOZE
	db 25, BITE
	db 30, SLASH
	db 36, DRAGON_CLAW
	db 42, DIG
	db 48, SANDSTORM
	db 54, TAKE_DOWN
	db 60, EARTHQUAKE
	db 66, OUTRAGE
	db 0 ; no more level-up moves

GabiteEvosAttacks:
	db EVOLVE_LEVEL, 48, GARCHOMP
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 1, DRAGONBREATH
	db 18, BULLDOZE
	db 25, BITE
	db 34, SLASH
	db 42, DRAGON_CLAW
	db 50, DIG
	db 58, SANDSTORM
	db 66, TAKE_DOWN
	db 74, EARTHQUAKE
	db 80, OUTRAGE
	db 0 ; no more level-up moves

GarchompEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 1, DRAGONBREATH
	db 18, BULLDOZE
	db 25, BITE
	db 30, SLASH
	db 36, DRAGON_CLAW
	db 47, CRUNCH
	db 52, DIG
	db 62, SANDSTORM
	db 72, TAKE_DOWN
	db 82, EARTHQUAKE
	db 92, OUTRAGE
	db 0 ; no more level-up moves

NecrozmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HEALING_LIGHT
	db 8, SPIKES ;Stealth Rock ---> Similar Move
	db 16, SLASH
	db 24, NIGHT_SLASH
	db 32, PSYCHO_CUT
	db 40, SWORDS_DANCE ;Stored Power ----> Swsh TR
	db 48, ROCK_SLIDE ;Rock Blast ----> Similar Typed Move
	db 56, IRON_DEFENSE 
	db 64, ROCK_SLASH ;Power Gem ----. Similar Typed Move
	db 72, HYPER_BEAM ;Placeholder until PRismatic Laser's Slot is freed up
	db 80, OUTRAGE ;Gravity ---> SV TM
	db 0 ; no more level-up moves

IWantItEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HEAL_BELL
	db 7, SWIFT
	db 21, SAFEGUARD
	db 28, PSYBEAM
	db 35, CALM_MIND
	db 42, PSYCHIC_M
	db 49, METEOR_MASH
	db 56, RECOVER
	db 63, FUTURE_SIGHT
	db 70, REST
	db 77, DOUBLE_EDGE
	db 84, MOONBLAST
	db 91, DRACO_METEOR
	db 98, DOOM_DESIRE
	db 0 ; no more level-up moves

RowletEvosAttacks:
	db EVOLVE_LEVEL, 16, DARTRIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, LEAFAGE
	db 8, PECK
	db 11, ASTONISH
	db 14, RAZOR_LEAF
	db 16, ANCIENTPOWER ;Ancient Power --> Move Retype Mechanic?
	db 18, LOCK_ON ;Foresight ---> Something Close
	db 22, DRILL_PECK ;Pluck ---> Something Similar
	db 25, HEALING_LIGHT ;Synthesis ---> Healing Light
	db 29, FURY_STRIKES
	db 32, HAZE ;Egg Move
	db 36, LEAF_BLADE 
	db 39, AGILITY ;Feather Dance ---> Similar Move
	db 43, BRAVE_BIRD
	db 46, NASTY_PLOT
	db 0 ; no more level-up moves

DartrixEvosAttacks:
	db EVOLVE_LEVEL, 34, DECIDUEYE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, LEAFAGE
	db 8, PECK
	db 11, ASTONISH
	db 14, RAZOR_LEAF
	db 16, ANCIENTPOWER ;Ancient Power --> Move Retype Mechanic?
	db 19, LOCK_ON ;Foresight ---> Something Close
	db 24, DRILL_PECK ;Pluck ---> Something Similar
	db 28, HEALING_LIGHT ;Synthesis ---> Healing Light
	db 33, FURY_STRIKES
	db 37, HAZE ;Egg Move
	db 42, LEAF_BLADE 
	db 46, AGILITY ;Feather Dance ---> Similar Move
	db 51, BRAVE_BIRD
	db 55, NASTY_PLOT
	db 0 ; no more level-up moves

DecidueyeEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, LEAFAGE
	db 8, PECK
	db 11, ASTONISH
	db 14, RAZOR_LEAF
	db 16, ANCIENTPOWER ;Ancient Power --> Move Retype Mechanic?
	db 19, LOCK_ON ;Foresight ---> Something Close
	db 24, DRILL_PECK ;Pluck ---> Something Similar
	db 28, HEALING_LIGHT ;Synthesis ---> Healing Light
	db 33, FURY_STRIKES
	db 33, SPIRIT_SHACKLE
	db 38, HAZE ;Egg Move
	db 44, LEAF_BLADE 
	db 49, AGILITY ;Feather Dance ---> Similar Move
	db 55, BRAVE_BIRD
	db 60, NASTY_PLOT
	db 65, LEAF_STORM
	db 0 ; no more level-up moves

FennekinEvosAttacks:
	db EVOLVE_LEVEL, 16, BRAIXEN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 6, EMBER
	db 8, HOWL
	db 11, CHARM ;ZA Level Up
	db 14, FLAME_WHEEL
	db 16, PSYBEAM
	db 18, SAFEGUARD ;Lucky Chant ----> Something Close
	db 22, FIRE_SPIN
	db 25, LIGHT_SCREEN
	db 29, WILL_O_WISP
	db 32, HYPNOTIZE ;Egg Move
	db 36, FLAMETHROWER
	db 39, SUNNY_DAY
	db 43, PSYCHIC_M
	db 46, FIRE_BLAST
	db 0 ; no more level-up moves

BraixenEvosAttacks:
	db EVOLVE_LEVEL, 36, DELPHOX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 6, EMBER
	db 8, HOWL
	db 11, CHARM ;ZA Level Up
	db 14, FLAME_WHEEL
	db 16, PSYBEAM
	db 19, SAFEGUARD ;Lucky Chant ----> Something Close
	db 24, FIRE_SPIN
	db 28, LIGHT_SCREEN
	db 33, WILL_O_WISP
	db 37, HYPNOTIZE ;Egg Move
	db 42, FLAMETHROWER
	db 46, SUNNY_DAY
	db 51, PSYCHIC_M
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

DelphoxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 6, EMBER
	db 8, HOWL
	db 11, CHARM ;ZA Level Up
	db 14, FLAME_WHEEL
	db 16, PSYBEAM
	db 19, SAFEGUARD ;Lucky Chant ----> Something Close
	db 24, FIRE_SPIN
	db 28, LIGHT_SCREEN
	db 33, WILL_O_WISP
	db 35, MYSTICAL_FIRE
	db 38, HYPNOTIZE ;Egg Move
	db 44, FLAMETHROWER
	db 49, SUNNY_DAY
	db 55, PSYCHIC_M
	db 60, FIRE_BLAST
	db 65, FUTURE_SIGHT
	db 0 ; no more level-up moves

PiplupEvosAttacks:
	db EVOLVE_LEVEL, 16, PRINPLUP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, WATER_GUN
	db 8, PECK
	db 11, CHARM
	db 14, BUBBLEBEAM
	db 16, AERIAL_ACE ;PLA Level Up
	db 18, MIST
	db 22, ICY_WIND ;Bide ---> HGSS Tutor
	db 25, FURY_STRIKES
	db 29, SWAGGER ; Brine ---> Gen 4 TM
	db 32, WHIRLPOOL
	db 36, SURF
	db 39, DRILL_PECK
	db 43, ICE_BEAM
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

PrinplupEvosAttacks:
	db EVOLVE_LEVEL, 36, EMPOLEON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, WATER_GUN
	db 8, PECK
	db 11, CHARM
	db 14, BUBBLEBEAM
	db 15, METAL_CLAW
	db 16, AERIAL_ACE ;PLA Level Up
	db 19, MIST
	db 24, ICY_WIND ;Bide ---> HGSS Tutor
	db 28, FURY_STRIKES
	db 33, SWAGGER ; Brine ---> Gen 4 TM
	db 37, WHIRLPOOL
	db 42, SURF
	db 46, DRILL_PECK
	db 51, ICE_BEAM
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

EmpoleonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, WATER_GUN
	db 8, PECK
	db 11, CHARM
	db 14, BUBBLEBEAM
	db 15, METAL_CLAW
	db 16, AERIAL_ACE ;PLA Level Up
	db 19, MIST
	db 24, ICY_WIND ;Bide ---> HGSS Tutor
	db 28, FURY_STRIKES
	db 33, SWAGGER ; Brine ---> Gen 4 TM
	db 35, EMPEROR_BLAST ;New Signiture Move for Empoleon upon evolving, Made to match up with Decidueye and Delphox having Signiture Moves.
	db 38, WHIRLPOOL
	db 44, SURF
	db 49, DRILL_PECK
	db 55, ICE_BEAM
	db 60, HYDRO_PUMP
	db 65, SWORDS_DANCE
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES
	db 16, FOCUS_ENERGY
	db 19, SWIFT
	db 25, BODY_SLAM
	db 28, REST
	db 31, TAKE_DOWN
	db 36, AMNESIA
	db 39, BATON_PASS
	db 42, DOUBLE_EDGE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, DEFENSE_CURL
	db 7, QUICK_ATTACK
	db 13, FURY_STRIKES
	db 14, AGILITY
	db 17, FOCUS_ENERGY
	db 21, SWIFT
	db 28, BODY_SLAM
	db 32, REST
	db 36, TAKE_DOWN
	db 42, AMNESIA
	db 46, BATON_PASS
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

SwabluEvosAttacks:
	db EVOLVE_LEVEL, 35, ALTARIA
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 5, HYPNOTIZE
	db 7, FURY_STRIKES
	db 9, SAFEGUARD
	db 11, FAIRY_WIND ; Disarming Voice
	db 14, MIST
	db 17, SWIFT ; Round
	db 20, SCREECH ; Natural Gift
	db 23, TAKE_DOWN
	db 26, RECOVER ; Refresh
	db 30, AGILITY ; Mirror Move
	db 34, IRON_DEFENSE ; Cotton Guard
	db 38, DRAGON_PULSE
	db 42, PERISH_SONG
	db 46, MOONBLAST
	db 0 ; no more level-up moves

AltariaEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGONBREATH
	db 1, HURRICANE ; Sky Attack
	db 1, PECK
	db 1, GROWL
	db 1, HYPNOTIZE
	db 1, FURY_STRIKES
	db 9, SAFEGUARD
	db 11, FAIRY_WIND ; Disarming Voice
	db 14, MIST
	db 17, SWIFT ; Round
	db 20, SCREECH ; Natural Gift
	db 23, TAKE_DOWN
	db 26, RECOVER ; Refresh
	db 30, AGILITY ; Mirror Move
	db 34, IRON_DEFENSE ; Cotton Guard
	db 34, DRAGONBREATH
	db 40, DRAGON_PULSE
	db 46, PERISH_SONG
	db 52, MOONBLAST
	db 59, HURRICANE ; Sky Attack
	db 0 ; no more level-up moves

TarountulaEvosAttacks:
	db EVOLVE_LEVEL, 15, SPIDOPS
	db 0 ; no more evolutions
	db 1, SLOW_DOWN
	db 1, TACKLE
	db 5, CROSS_CUTTER
	db 8, ABSORB
	db 11, FAINT_ATTACK
	db 14, MEGA_DRAIN
	db 18, BLOCK
	db 22, COUNTER
	db 25, HEADBUTT
	db 29, LEECH_LIFE
	db 33, POISON_JAB
	db 36, FIRST_IMPRESSION
	db 40, X_SCISSOR
	db 0 ; no more level-up moves

SpidopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLOW_DOWN
	db 1, TACKLE
	db 5, CROSS_CUTTER
	db 8, ABSORB
	db 11, FAINT_ATTACK
	db 14, MEGA_DRAIN
	db 19, BLOCK
	db 24, COUNTER
	db 28, HEADBUTT
	db 33, LEECH_LIFE
	db 37, POISON_JAB
	db 41, FIRST_IMPRESSION
	db 45, X_SCISSOR
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	db EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, DOUBLE_TEAM
	db 6, CONFUSION
	db 9, HYPNOTIZE
	db 12, DRAINING_KISS
	db 15, TELEPORT
	db 18, PSYBEAM
	db 21, DISABLE
	db 24, CHARM
	db 27, CALM_MIND
	db 30, PSYCHIC_M
	db 33, CONFUSE_RAY
	db 36, MYSTICAL_FIRE
	db 41, FUTURE_SIGHT
	db 0 ; no more level-up moves

KirliaEvosAttacks:
	db EVOLVE_LEVEL, 30, GARDEVOIR
	db EVOLVE_ITEM_GENDER, MON_MALE, DAWN_STONE, GALLADE
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, DOUBLE_TEAM
	db 1, CONFUSION
	db 1, HYPNOTIZE
	db 12, DRAINING_KISS
	db 15, TELEPORT
	db 18, PSYBEAM
	db 23, DISABLE
	db 28, CHARM
	db 33, CALM_MIND
	db 38, PSYCHIC_M
	db 43, CONFUSE_RAY
	db 48, MYSTICAL_FIRE
	db 53, FUTURE_SIGHT
	db 0 ; no more level-up moves

GardevoirEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, DOUBLE_TEAM
	db 1, CONFUSION
	db 1, HYPNOTIZE
	db 12, DRAINING_KISS
	db 15, TELEPORT
	db 18, PSYBEAM
	db 23, DISABLE
	db 28, CHARM
	db 29, DAZZLING_GLEAM
	db 35, CALM_MIND
	db 42, PSYCHIC_M
	db 49, CONFUSE_RAY
	db 56, MYSTICAL_FIRE
	db 63, MOONBLAST
	db 70, FUTURE_SIGHT
	db 0 ; no more level-up moves
	
GalladeEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, DOUBLE_TEAM
	db 1, CONFUSION
	db 1, HYPNOTIZE
	db 12, FAINT_ATTACK ;Feint
	db 15, TELEPORT
	db 18, AERIAL_ACE
	db 23, FALSE_SWIPE
	db 28, PROTECT
	db 29, SLASH
	db 35, SWORDS_DANCE
	db 42, PSYCHO_CUT
	db 49, CONFUSE_RAY
	db 56, LEAF_BLADE
	db 63, HAMMER_ARM
	db 70, FUTURE_SIGHT
	db 0 ; no more level-up moves	

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, THUNDERSHOCK
	db 4, GROWL
	db 8, SWEET_KISS
	db 12, THUNDER_WAVE
	db 16, NASTY_PLOT
	db 20, CHARM
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FAIRY_WIND
	db 4, GROWL
	db 8, SWEET_KISS
	db 12, DRAINING_KISS
	db 16, ENCORE
	db 20, CHARM
	db 0 ; no more level-up moves
	
TinkatinkEvosAttacks:
	db EVOLVE_LEVEL, 24, TINKATUFF
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, FAIRY_WIND
	db 5, GROWL
	db 8, METAL_CLAW
	db 11, THIEF
	db 14, ROCK_SMASH
	db 17, DRAINING_KISS
	db 21, SWEET_KISS
	db 24, FAINT_ATTACK
	db 27, CHARM
	db 31, SCREECH
	db 35, ROCK_SLIDE
	db 39, FLASH_CANNON
	db 43, PLAY_ROUGH
	db 0 ; no more level-up moves

TinkatuffEvosAttacks:
	db EVOLVE_LEVEL, 38, TINKATON
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, FAIRY_WIND
	db 1, GROWL
	db 1, METAL_CLAW
	db 11, THIEF
	db 14, ROCK_SMASH
	db 17, DRAINING_KISS
	db 21, SWEET_KISS
	db 24, FAINT_ATTACK
	db 29, CHARM
	db 33, SCREECH
	db 37, ROCK_SLIDE
	db 41, FLASH_CANNON
	db 45, PLAY_ROUGH
	db 0 ; no more level-up moves

TinkatonEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, FAIRY_WIND
	db 1, GROWL
	db 1, METAL_CLAW
	db 11, THIEF
	db 14, ROCK_SMASH
	db 17, DRAINING_KISS
	db 21, SWEET_KISS
	db 24, FAINT_ATTACK
	db 29, CHARM
	db 33, SCREECH
	db 37, ROCK_SLIDE
	db 37, GIGATON_HAMMER
	db 44, FLASH_CANNON
	db 52, PLAY_ROUGH
	db 60, HAMMER_ARM
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 11, SLOW_DOWN
	db 15, SPARK
	db 18, TAKE_DOWN
	db 22, CONFUSE_RAY
	db 25, SCREECH
	db 29, BODY_SLAM
	db 32, THUNDERBOLT
	db 36, HYPNOTIZE
	db 39, DAZZLING_GLEAM
	db 43, LIGHT_SCREEN
	db 46, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, THUNDER_WAVE
	db 1, THUNDERSHOCK
	db 11, SLOW_DOWN
	db 16, SPARK
	db 20, TAKE_DOWN
	db 25, CONFUSE_RAY
	db 29, SCREECH
	db 34, BODY_SLAM
	db 38, THUNDERBOLT
	db 43, HYPNOTIZE
	db 47, DAZZLING_GLEAM
	db 52, LIGHT_SCREEN
	db 56, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 1, THUNDER_WAVE
	db 1, THUNDERSHOCK
	db 1, DRAGON_PULSE
	db 1, FIRE_PUNCH
	db 1, ZAP_CANNON
	db 11, SLOW_DOWN
	db 16, SPARK
	db 20, TAKE_DOWN
	db 25, CONFUSE_RAY
	db 29, SCREECH
	db 29, THUNDERPUNCH
	db 35, BODY_SLAM
	db 40, THUNDERBOLT
	db 46, HYPNOTIZE
	db 51, DAZZLING_GLEAM
	db 57, LIGHT_SCREEN
	db 62, THUNDER
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 1, TACKLE
	db 1, DISARM
	db 6, WATER_GUN
	db 9, CHARM
	db 12, BUBBLEBEAM
	db 15, TAKE_DOWN
	db 19, HYPNOTIZE
	db 21, PLAY_ROUGH
	db 24, BODY_SLAM
	db 27, RAIN_DANCE
	db 30, HYDRO_PUMP
	db 33, DOUBLE_EDGE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 1, TACKLE
	db 1, DISARM
	db 1, WATER_GUN
	db 1, CHARM
	db 12, BUBBLEBEAM
	db 15, TAKE_DOWN
	db 21, HYPNOTIZE
	db 25, PLAY_ROUGH
	db 30, BODY_SLAM
	db 35, RAIN_DANCE
	db 40, HYDRO_PUMP
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 22, SKIPLOOM ;Evolves later due to regional adaption
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE
	db 4, DISARM
	db 6, ABSORB
	db 8, FAIRY_WIND
	db 10, POISONPOWDER
	db 10, SLEEP_POWDER
	db 10, STUN_SPORE
	db 12, LEECH_SEED
	db 15, HEALING_LIGHT
	db 19, RAZOR_LEAF
	db 22, MEGA_DRAIN
	db 24, SLOW_DOWN
	db 27, BODY_SLAM
	db 32, GIGA_DRAIN
	db 35, AGILITY
	db 38, DAZZLING_GLEAM
	db 42, ENERGY_BALL
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 40, JUMPLUFF ;Evolves later due to Regional adapation
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE
	db 1, DISARM
	db 1, ABSORB
	db 8, FAIRY_WIND
	db 10, POISONPOWDER
	db 10, SLEEP_POWDER
	db 10, STUN_SPORE
	db 12, LEECH_SEED
	db 15, HEALING_LIGHT
	db 19, RAZOR_LEAF
	db 25, MEGA_DRAIN
	db 29, SLOW_DOWN
	db 33, BODY_SLAM
	db 37, GIGA_DRAIN
	db 41, AGILITY
	db 45, DAZZLING_GLEAM
	db 49, ENERGY_BALL
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TACKLE
	db 1, DISARM
	db 1, ABSORB
	db 1, STRENGTH_SAP
	db 1, ENCORE
	db 8, FAIRY_WIND
	db 10, POISONPOWDER
	db 10, SLEEP_POWDER
	db 10, STUN_SPORE
	db 12, LEECH_SEED
	db 15, HEALING_LIGHT
	db 19, RAZOR_LEAF
	db 25, MEGA_DRAIN
	db 29, SLOW_DOWN
	db 33, BODY_SLAM
	db 37, GIGA_DRAIN
	db 44, AGILITY
	db 51, DAZZLING_GLEAM
	db 58, ENERGY_BALL
	db 0 ; no more level-up moves

KecleonEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, SUBSTITUTE
	db 1, DISARM
	db 7, BATON_PASS
	db 10, THIEF
	db 14, PROTECT
	db 18, PSYBEAM
	db 21, ROCK_SLIDE
	db 25, SLASH
	db 28, FIRST_IMPRESSION
	db 33, SHADOW_CLAW
	db 38, SCREECH
	db 42, DOUBLE_EDGE
	db 54, HYPER_BEAM
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 7, ABSORB
	db 10, MEGA_DRAIN
	db 16, RAZOR_LEAF
	db 19, LEECH_SEED
	db 22, GIGA_DRAIN
	db 25, ENDURE
	db 28, HEALING_LIGHT
	db 31, SOLARBEAM
	db 34, DOUBLE_EDGE
	db 36, SUNNY_DAY
	db 39, ENERGY_BALL
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWTH
	db 1, TACKLE
	db 1, ENCORE
	db 1, HYPNOTIZE
	db 7, ABSORB
	db 10, MEGA_DRAIN
	db 16, RAZOR_LEAF
	db 19, LEECH_SEED
	db 22, GIGA_DRAIN
	db 25, ENDURE
	db 31, HEALING_LIGHT
	db 34, SOLARBEAM
	db 36, DOUBLE_EDGE
	db 39, SUNNY_DAY
	db 42, ENERGY_BALL
	db 45, PETAL_DANCE
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db EVOLVE_MOVE, ANCIENTPOWER, YANMEGA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SWIFT
	db 17, PROTECT
	db 22, CONFUSE_RAY
	db 27, LEECH_LIFE
	db 30, ANCIENTPOWER
	db 33, HYPNOTIZE
	db 38, WING_ATTACK
	db 43, SCREECH
	db 46, AIR_SLASH
	db 49, BUG_BUZZ
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SWIFT
	db 17, PROTECT
	db 22, CONFUSE_RAY
	db 27, LEECH_LIFE
	db 30, ANCIENTPOWER
	db 33, HYPNOTIZE
	db 38, WING_ATTACK
	db 43, SCREECH
	db 46, AIR_SLASH
	db 49, BUG_BUZZ
	db 0 ; no more level-up moves


WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, WATER_GUN
	db 4, RAIN_DANCE
	db 8, MUD_SLAP
	db 12, HAZE
	db 12, MIST
	db 16, BUBBLEBEAM
	db 21, BODY_SLAM
	db 24, BULLDOZE
	db 28, MUDDY_WATER
	db 32, AMNESIA
	db 36, TOXIC
	db 40, EARTHQUAKE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, WATER_GUN
	db 4, RAIN_DANCE
	db 8, MUD_SLAP
	db 12, HAZE
	db 12, MIST
	db 16, BUBBLEBEAM
	db 23, BODY_SLAM
	db 28, BULLDOZE
	db 34, MUDDY_WATER
	db 40, AMNESIA
	db 46, TOXIC
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, SWIFT
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, HEALING_LIGHT
	db 5, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 15, GROWL
	db 20, CONFUSION
	db 25, BITE
	db 30, PSYBEAM
	db 35, BATON_PASS
	db 40, CHARM
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, SWIFT
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, HEALING_LIGHT
	db 5, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 15, GROWL
	db 20, PURSUIT
	db 25, BITE
	db 30, FAINT_ATTACK
	db 35, BATON_PASS
	db 40, CHARM
	db 45, DARK_PULSE
	db 0 ; no more level-up moves
	
MisdreavusEvosAttacks:
	db EVOLVE_ITEM, DUSK_STONE, MISMAGIUS
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, GROWL
	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 19, BLOCK
	db 23, NIGHT_SHADE
	db 28, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, DARK_PULSE
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 50, NASTY_PLOT
	db 0 ; no more level-up moves
	
MismagiusEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, GROWL
	db 1, MYSTICAL_FIRE
	db 10, ASTONISH
	db 14, CONFUSE_RAY
	db 19, BLOCK
	db 23, NIGHT_SHADE
	db 28, PSYBEAM
	db 32, PAIN_SPLIT
	db 37, DARK_PULSE
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 50, NASTY_PLOT
	db 0 ; no more level-up moves	

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

PhantumpEvosAttacks:
	db EVOLVE_ITEM, LINKING_CORD, TREVENANT
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, TACKLE
	db 4, LEAFAGE ;Branch Poke 
	db 8, LEECH_SEED
	db 12, CONFUSE_RAY
	db 16, WILL_O_WISP
	db 20, NIGHT_SHADE
	db 24, GROWTH
	db 28, GIGA_DRAIN
	db 32, CURSE
	db 36, SHADOW_BALL
	db 40, HEALING_LIGHT
	db 44, ENERGY_BALL
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves
	
TrevenantEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, TACKLE
	db 1, SHADOW_CLAW
	db 4, LEAFAGE ;Branch Poke 
	db 8, LEECH_SEED
	db 12, CONFUSE_RAY
	db 16, WILL_O_WISP
	db 20, NIGHT_SHADE
	db 24, GROWTH
	db 28, GIGA_DRAIN
	db 32, CURSE
	db 36, SHADOW_BALL
	db 40, HEALING_LIGHT
	db 44, ENERGY_BALL
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves	

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, FAINT_ATTACK
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, ROLLOUT
	db 23, CURSE
	db 28, SPIKES
	db 31, COUNTER
	db 34, EXPLOSION
	db 39, IRON_DEFENSE
	db 42, BODY_SLAM
	db 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 1, FAINT_ATTACK
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, ROLLOUT
	db 23, CURSE
	db 28, SPIKES
	db 30, FLASH_CANNON
	db 32, COUNTER
	db 36, EXPLOSION
	db 42, IRON_DEFENSE
	db 46, BODY_SLAM
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

WolfmanEvosAttacks:
	db EVOLVE_MOVE, NIGHT_SLASH, WARWOLF
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DISARM
	db 7, POWDER_SNOW
	db 13, FAINT_ATTACK
	db 18, SAFEGUARD
	db 23, FURY_STRIKES
	db 29, ICE_PUNCH
	db 35, NIGHT_SLASH
	db 41, SLASH
	db 46, SCREECH
	db 51, CONFUSE_RAY
	db 56, BLIZZARD
	db 60, SHADOW_CLAW
	db 0 ; no more level-up moves
	
WarwolfEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DISARM
	db 7, POWDER_SNOW
	db 13, FAINT_ATTACK
	db 18, SAFEGUARD
	db 23, FURY_STRIKES
	db 29, ICE_PUNCH
	db 35, NIGHT_SLASH
	db 43, SLASH
	db 50, SCREECH
	db 55, CONFUSE_RAY
	db 60, BLIZZARD
	db 66, SHADOW_CLAW
	db 70, FATAL_BLOW
	db 0 ; no more level-up moves

StuffulEvosAttacks:
	db EVOLVE_LEVEL, 28, BEWEAR
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, TACKLE
	db 4, GROWL
	db 8, FAINT_ATTACK
	db 12, ENDURE
	db 16, STRENGTH
	db 20, TAKE_DOWN
	db 24, FLAIL
	db 28, HAMMER_ARM
	db 32, THRASH
	db 36, PAIN_SPLIT
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

BewearEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, TACKLE
	db 4, GROWL
	db 8, FAINT_ATTACK
	db 12, ENDURE
	db 16, STRENGTH
	db 20, TAKE_DOWN
	db 24, FLAIL
	db 27, WRAP
	db 30, HAMMER_ARM
	db 36, THRASH
	db 42, PAIN_SPLIT
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db EVOLVE_MOVE, THUNDER_WAVE, NUMPUFF
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, TACKLE
	db 4, HARDEN
	db 8, WATER_GUN
	db 12, DISARM
	db 16, MINIMIZE
	db 20, SPIKES
	db 24, BUBBLEBEAM
	db 28, POISON_JAB
	db 32, PIN_MISSILE
	db 34, THUNDER_WAVE
	db 36, TOXIC
	db 40, HYDRO_PUMP
	db 44, DESTINY_BOND
	db 48, GUNK_SHOT
	db 0 ; no more level-up moves

NumpuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, TACKLE
	db 4, HARDEN
	db 8, WATER_GUN
	db 12, DISARM
	db 16, MINIMIZE
	db 20, SPIKES
	db 24, BUBBLEBEAM
	db 28, POISON_JAB
	db 32, PIN_MISSILE
	db 33, THUNDERBOLT
	db 34, THUNDER_WAVE
	db 36, TOXIC
	db 40, HYDRO_PUMP
	db 44, DESTINY_BOND
	db 48, GUNK_SHOT
	db 52, THUNDER
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, QUICK_ATTACK
	db 1, METAL_CLAW
	db 4, CROSS_CUTTER
	db 8, FALSE_SWIPE
	db 12, WING_ATTACK
	db 16, DOUBLE_TEAM
	db 20, FOCUS_ENERGY
	db 24, SLASH
	db 28, AGILITY
	db 32, NIGHT_SLASH
	db 36, AIR_SLASH
	db 40, X_SCISSOR
	db 44, SWORDS_DANCE
	db 48, IRON_HEAD
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, TACKLE
	db 5, FURY_STRIKES
	db 10, ENDURE
	db 15, AERIAL_ACE
	db 20, PIERCE
	db 25, COUNTER
	db 30, ROCK_SMASH
	db 35, PIN_MISSILE
	db 40, NIGHT_SLASH
	db 45, THRASH
	db 50, SWORDS_DANCE
	db 55, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db EVOLVE_HOLD, TR_NITE, DUSK_STONE, WEAVILE
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, SCRATCH
	db 6, THIEF
	db 12, QUICK_ATTACK
	db 18, METAL_CLAW
	db 24, ICY_WIND
	db 30, FURY_STRIKES
	db 36, SWORDS_DANCE
	db 42, NIGHT_SLASH
	db 48, AGILITY
	db 54, SCREECH
	db 60, SLASH
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, SCRATCH
	db 6, THIEF
	db 12, QUICK_ATTACK
	db 18, METAL_CLAW
	db 24, ICY_WIND
	db 30, FURY_STRIKES
	db 36, SWORDS_DANCE
	db 42, NIGHT_SLASH
	db 48, AGILITY
	db 54, SCREECH
	db 60, SLASH
	db 0 ; no more level-up moves

RelicanthEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 8, WATER_GUN
	db 15, ROCK_THROW
	db 22, REST
	db 29, TAKE_DOWN
	db 43, ROCK_SLIDE
	db 50, HYDRO_PUMP
	db 54, ANCIENTPOWER
	db 0 ; no more level-up moves
	
SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, EMBER
	db 6, ROCK_THROW
	db 8, HARDEN
	db 13, SMOKESCREEN
	db 20, ANCIENTPOWER
	db 27, ROCK_SLIDE
	db 34, FLAMETHROWER
	db 41, AMNESIA
	db 43, BODY_SLAM
	db 48, RECOVER
	db 50, EARTHQUAKE
	db 55, FIRE_BLAST
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, EMBER
	db 6, ROCK_THROW
	db 8, HARDEN
	db 13, SMOKESCREEN
	db 20, ANCIENTPOWER
	db 27, ROCK_SLIDE
	db 34, FLAMETHROWER
	db 43, AMNESIA
	db 47, BODY_SLAM
	db 54, RECOVER
	db 61, EARTHQUAKE
	db 66, FIRE_BLAST
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, TACKLE
	db 5, POWDER_SNOW
	db 10, FLAIL
	db 15, MIST
	db 20, ENDURE
	db 25, ICY_WIND
	db 30, AMNESIA
	db 35, TAKE_DOWN
	db 40, EARTHQUAKE
	db 45, BLIZZARD
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db EVOLVE_MOVE, ANCIENTPOWER, MAMOSWINE
	db 1, MUD_SLAP
	db 1, TACKLE
	db 5, POWDER_SNOW
	db 10, FLAIL
	db 15, MIST
	db 20, ENDURE
	db 25, ICY_WIND
	db 30, AMNESIA
	db 32, FURY_STRIKES
	db 38, TAKE_DOWN
	db 44, EARTHQUAKE
	db 50, BLIZZARD
	db 50, ANCIENTPOWER
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, MUD_SLAP
	db 1, TACKLE
	db 5, POWDER_SNOW
	db 10, FLAIL
	db 15, MIST
	db 20, ENDURE
	db 25, ICY_WIND
	db 30, AMNESIA
	db 32, FURY_STRIKES
	db 38, TAKE_DOWN
	db 44, EARTHQUAKE
	db 50, BLIZZARD
	db 50, ANCIENTPOWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, ACID
	db 4, SWIFT
	db 8, FOCUS_ENERGY
	db 12, PSYBEAM
	db 16, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 24, LOCK_ON
	db 28, FIREWORKS ;New Move! I thought it would be kinda funny if Remoraid could do this
	db 32, ICE_BEAM
	db 36, HYDRO_PUMP
	db 40, GUNK_SHOT
	db 44, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, ACID
	db 4, SWIFT
	db 8, FOCUS_ENERGY
	db 12, PSYBEAM
	db 16, AURORA_BEAM
	db 20, BUBBLEBEAM
	db 24, LOCK_ON
	db 24, OCTAZOOKA
	db 30, FIREWORKS ;New Move! I thought it would be kinda funny if Remoraid could do this
	db 35, ICE_BEAM
	db 40, HYDRO_PUMP
	db 45, GUNK_SHOT
	db 50, FLASH_CANNON
	db 55, DRAGON_PULSE ;New Move for it, Figured id expand upon Octillerys moveset
	db 60, ZAP_CANNON ;New Move for it, Figured id expand upon Octillerys Moveset
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, CONFUSE_RAY
	db 1, TACKLE
	db 1, WATER_GUN
	db 12, WING_ATTACK
	db 16, PROTECT
	db 20, AGILITY
	db 24, BUBBLEBEAM
	db 28, HEADBUTT
	db 32, AIR_SLASH
	db 36, SURF
	db 40, HURRICANE
	db 44, DOUBLE_EDGE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, DISARM
	db 4, HOWL
	db 8, POISON_GAS
	db 13, SEND_AWAY
	db 16, BITE
	db 20, FLAME_WHEEL
	db 25, THIEF
	db 28, FIRE_SPIN
	db 32, FAINT_ATTACK
	db 37, SWAGGER
	db 40, BONEMERANG ;From Spaceworld 97! Explained in lore as Houndours of the region using bones as toys.
	db 44, FLAMETHROWER
	db 49, CRUNCH
	db 52, NASTY_PLOT
	db 56, FIRE_BLAST
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, DISARM
	db 1, HOWL
	db 1, POISON_GAS
	db 1, DARK_PULSE
	db 13, SEND_AWAY
	db 16, BITE
	db 20, FLAME_WHEEL
	db 26, THIEF
	db 30, FIRE_SPIN
	db 35, FAINT_ATTACK
	db 41, SWAGGER
	db 45, BONEMERANG ;From Spaceworld 97! Explained in lore as Houndours of the region using bones as toys.
	db 50, FLAMETHROWER
	db 56, CRUNCH
	db 62, NASTY_PLOT
	db 68, FIRE_BLAST
	db 0 ; no more level-up moves

CramorantEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, WATER_GUN
	db 14, FURY_STRIKES
	db 21, WING_ATTACK
	db 28, DIVE
	db 35, DRILL_PECK
	db 42, AMNESIA
	db 49, THRASH
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	db EVOLVE_LEVEL, 35, VIBRAVA
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SMOKESCREEN
	db 1, FAINT_ATTACK
	db 5, MUD_SLAP
	db 8, BULLDOZE
	db 12, ROCK_SLIDE
	db 15, DIG
	db 19, PIERCE
	db 22, X_SCISSOR ; Feint
	db 26, CRUNCH
	; Skipped Level 29 Move
	db 33, EARTHQUAKE
	db 36, SANDSTORM
	db 40, ROCK_HEAD
	db 43, HYPER_BEAM
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	db EVOLVE_LEVEL, 45, FLYGON
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SMOKESCREEN
	db 1, FAINT_ATTACK
	db 1, CONFUSE_RAY
	db 1, SCREECH
	db 5, MUD_SLAP
	db 8, BULLDOZE
	db 12, ROCK_SLIDE
	db 15, DIG
	db 19, PIERCE
	db 22, X_SCISSOR
	db 26, CRUNCH
	db 29, BUG_BUZZ
	db 33, EARTHQUAKE
	db 34, DRAGONBREATH
	db 36, SANDSTORM
	db 40, ROCK_HEAD
	db 43, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_CLAW
	db 1, DRAGONBREATH
	db 1, BITE
	db 1, SMOKESCREEN
	db 1, CONFUSE_RAY
	db 1, SCREECH
	db 1, FAINT_ATTACK
	db 5, MUD_SLAP
	db 8, BULLDOZE
	db 12, ROCK_SLIDE
	db 15, DIG
	db 19, PIERCE
	db 22, X_SCISSOR
	db 26, CRUNCH
	db 29, BUG_BUZZ
	db 33, EARTHQUAKE
	db 34, DRAGONBREATH
	db 36, SANDSTORM
	db 40, ROCK_HEAD
	db 43, HYPER_BEAM
	db 44, DRAGON_CLAW
	db 47, OUTRAGE ; Dragon Rush
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db EVOLVE_ITEM, DUBIOUS_DISC, PORYGONZ
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONFUSE_RAY
	db 10, AGILITY
	db 15, THUNDERSHOCK
	db 20, PSYBEAM
	db 25, SPARK
	db 30, TAKE_DOWN
	db 35, RECOVER
	db 40, LOCK_ON
	db 45, TRI_ATTACK
	db 50, ZAP_CANNON
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
PorygonZEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, CONFUSE_RAY
	db 1, NASTY_PLOT
	db 10, AGILITY
	db 15, THUNDERSHOCK
	db 20, PSYBEAM
	db 25, SPARK
	db 30, TAKE_DOWN
	db 35, RECOVER
	db 40, LOCK_ON
	db 45, TRI_ATTACK
	db 50, ZAP_CANNON
	db 55, DOUBLE_EDGE
	db 0 ; no more level-up moves	

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

BlacephalonEvosAttacks:
	db 0 ; no more evolutions
	db 1, ASTONISH
	db 1, EMBER
	db 7, CONFUSE_RAY
	db 13, HYPNOTIZE
	db 17, FLAME_WHEEL ;Flame Burst + Incinerate ----> Similar Move
	db 23, NIGHT_SHADE
	db 29, LIGHT_SCREEN
	db 31, CALM_MIND
	db 37, FIRE_BLAST
	db 41, SHADOW_BALL
	db 47, WILL_O_WISP
	db 59, MIND_BLOWN
	db 0 ; no more level-up moves

StakatakaEvosAttacks:
	db 0 ; no more evolutions
	db 1, PROTECT
	db 1, TACKLE
	db 5, ROCK_THROW
	db 11, SPIKES ;Stealth Rock ---> Similar Move
	db 17, STOMP
	db 19, TAKE_DOWN
	db 23, ROCK_SLIDE
	db 31, BLOCK
	db 37, IRON_DEFENSE
	db 43, IRON_HEAD
	db 47, ROCK_HEAD ;Rock Blast ----> Beta Move
	db 53, SAFEGUARD ;Wide Guard ---> Similar Move
	db 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

ChinglingEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, CHIMECHO
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, GROWL
	db 7, ASTONISH
	db 10, CONFUSION
	db 13, HYPNOTIZE
	db 16, FAIRY_WIND
	db 21, PSYBEAM
	db 29, MOONBLAST
	db 0 ; no more level-up moves

ChimechoEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 4, GROWL
	db 7, ASTONISH
	db 10, CONFUSION
	db 13, HYPNOTIZE
	db 19, TAKE_DOWN
	db 25, PSYBEAM
	db 32, MOONBLAST
	db 37, SAFEGUARD
	db 42, DOUBLE_EDGE
	db 52, HEAL_BELL
	db 0 ; no more level-up moves


KurstrawEvosAttacks:
	db EVOLVE_MOVE, LEECH_LIFE, PANGSHI
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 8, DISABLE
	db 14, DESTINY_BOND
	db 19, SPITE
	db 25, CONFUSION
	db 30, FAINT_ATTACK
	db 36, NIGHT_SHADE
	db 40, SUBSTITUTE
	db 44, DARK_PULSE
	db 50, PSYCHIC_M
	db 54, PAIN_SPLIT
	db 60, SHADOW_BALL
	db 100, CURSE
	db 0 ; no more level-up moves
	
PangshiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 8, DISABLE
	db 14, CHARM
	db 19, SPITE
	db 25, CONFUSION
	db 30, DRAINING_KISS
	db 36, NIGHT_SHADE
	db 40, SUBSTITUTE
	db 44, MOONBLAST
	db 50, PSYCHIC_M
	db 54, PAIN_SPLIT
	db 60, SHADOW_BALL
	db 100, RETURN
	db 0 ; no more level-up moves

Zygarde10EvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE 
	db 1, BULLDOZE
	db 8, HAZE
	db 16, DIG
	db 24, SAFEGUARD
	db 32, CRUNCH
	db 40, DRAGON_PULSE
	db 48, EXTREMESPEED ;Land's Wrath ---> Level Up Move
	db 56, GLARE
	db 64, SANDSTORM
	db 72, EARTHQUAKE 
	db 80, OUTRAGE
	db 0 ; no more level-up moves

Zygarde50EvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE 
	db 1, BULLDOZE
	db 8, HAZE
	db 16, DIG
	db 24, SAFEGUARD
	db 32, CRUNCH
	db 40, DRAGON_PULSE
	db 48, EXTREMESPEED ;Land's Wrath ---> Level Up Move
	db 50, WRAP ; Bind ----> Similar Move
	db 56, GLARE
	db 64, SANDSTORM
	db 72, EARTHQUAKE 
	db 80, OUTRAGE
	db 0 ; no more level-up moves

Zygarde100EvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE 
	db 1, BULLDOZE
	db 8, HAZE
	db 16, DIG
	db 24, SAFEGUARD
	db 32, CRUNCH
	db 40, DRAGON_PULSE
	db 48, EXTREMESPEED ;Land's Wrath ---> Level Up Move
	db 50, WRAP ; Bind ----> Similar Move
	db 56, GLARE
	db 64, SANDSTORM
	db 70, CORE_ENFORCER
	db 72, EARTHQUAKE 
	db 80, OUTRAGE
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 3, ROCK_THROW
	db 6, FAINT_ATTACK
	db 9, BITE
	db 12, SCARY_FACE
	db 15, ROCK_SLIDE
	db 18, BULLDOZE
	db 21, SCREECH
	db 24, ROCK_HEAD
	db 27, CRUNCH
	db 31, EARTHQUAKE
	db 33, ROCK_SLASH
	db 36, THRASH
	db 39, SANDSTORM
	db 42, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, ROCK_THROW
	db 1, FAINT_ATTACK
	db 1, BITE
	db 12, SCARY_FACE
	db 15, ROCK_SLIDE
	db 18, BULLDOZE
	db 21, SCREECH
	db 24, ROCK_HEAD
	db 27, CRUNCH
	db 33, EARTHQUAKE
	db 37, ROCK_SLASH
	db 42, THRASH
	db 47, SANDSTORM
	db 52, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, ROCK_THROW
	db 1, FAINT_ATTACK
	db 1, BITE
	db 12, SCARY_FACE
	db 15, ROCK_SLIDE
	db 18, BULLDOZE
	db 21, SCREECH
	db 24, ROCK_HEAD
	db 27, CRUNCH
	db 33, EARTHQUAKE
	db 37, ROCK_SLASH
	db 42, THRASH
	db 47, SANDSTORM
	db 52, HYPER_BEAM
	db 59, DARK_PULSE
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, GUST
	db 1, SEND_AWAY
	db 9, MIST
	db 18, SAFEGUARD
	db 27, CALM_MIND
	db 36, PSYCHIC_M
	db 45, RECOVER
	db 54, AEROBLAST
	db 63, RAIN_DANCE
	db 72, HYDRO_PUMP
	db 81, FUTURE_SIGHT
	db 90, HURRICANE
	db 99, HYPER_BEAM
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, GUST
	db 1, SEND_AWAY
	db 9, HEAL_BELL ;Life Dew Replacement, Felt it would fit with Ho-Oh being summoned via a Bell.
	db 18, SAFEGUARD
	db 27, CALM_MIND
	db 36, PSYCHIC_M
	db 45, RECOVER
	db 54, SACRED_FIRE
	db 63, SUNNY_DAY
	db 72, FIRE_BLAST
	db 81, FUTURE_SIGHT
	db 90, BRAVE_BIRD
	db 99, OVERHEAT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, HEAL_BELL
	db 10, RAZOR_LEAF
	db 20, BATON_PASS
	db 30, ANCIENTPOWER
	db 40, CALM_MIND
	db 50, LEECH_SEED
	db 55, TIME_SLIP
	db 60, RECOVER
	db 70, FUTURE_SIGHT
	db 80, LEAF_STORM
	db 90, PERISH_SONG
	db 0 ; no more level-up moves
	
GorochuEvosAttacks:
	db 0 ; no more evolutions
	db 1, MYSTERY_MOVE
	db 1, THUNDERPUNCH
	db 1, THUNDERSHOCK
	db 1, DISARM
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 4, THUNDER_WAVE
	db 8, DOUBLE_TEAM
	db 12, DOUBLE_KICK ; Electro Ball ---> LGPE Level Up
	db 16, MUD_SLAP ;Feint ---> GSC Tm
	db 20, SPARK
	db 24, AGILITY
	db 28, IRON_TAIL
	db 32, THUNDERBOLT
	db 36, LIGHT_SCREEN
	db 40, BODY_SLAM ;Slam ----> TM Move
	db 44, THUNDER
	db 48, HYPER_BEAM
	db 52, OUTRAGE
	db 56, ZAP_CANNON
	db 60, SURF
	db 64, FLY
	db 68, EXTREMESPEED
	db 72, BELLY_DRUM
	db 0 ; no more level-up moves	

SylveonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, SWIFT
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, HEALING_LIGHT
	db 5, SMOKESCREEN
	db 10, QUICK_ATTACK
	db 15, GROWL
	db 20, FAIRY_WIND
	db 25, BITE
	db 30, DAZZLING_GLEAM
	db 35, BATON_PASS
	db 40, CHARM
	db 45, MOONBLAST
	db 0 ; no more level-up moves

SlitherWingEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, EMBER
	db 1, GUST
	db 7, POISONPOWDER
	db 7, STUN_SPORE
	db 14, FLAME_WHEEL
	db 21, STOMP
	db 28, ROCK_SMASH
	db 35, HEALING_LIGHT
	db 42, LEECH_LIFE
	db 49, HAMMER_ARM
	db 56, BULK_UP
	db 63, RAGING_FURY
	db 70, FIRST_IMPRESSION
	db 77, SEND_AWAY
	db 84, BUG_BUZZ
	db 91, THRASH
	db 0 ; no more level-up moves