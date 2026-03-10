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


BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 25, SWEET_SCENT
	db 32, GROWTH
	db 39, HEALING_LIGHT
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 38, GROWTH
	db 47, HEALING_LIGHT
	db 56, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 41, GROWTH
	db 53, HEALING_LIGHT
	db 65, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 19, SPLASH
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, SLASH
	db 43, SPLASH
	db 49, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 7, EMBER
	db 13, SMOKESCREEN
	db 20, SPLASH
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 41, SLASH
	db 48, SPLASH
	db 55, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 7, EMBER
	db 13, SMOKESCREEN
	db 20, SPLASH
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 44, SLASH
	db 54, SPLASH
	db 64, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, DISARM
	db 7, SPLASH
	db 10, HARDEN
	db 13, WATER_GUN
	db 18, BITE
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, RAIN_DANCE
	db 40, SPLASH
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, SPLASH
	db 4, DISARM
	db 7, SPLASH
	db 10, HARDEN
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 37, RAIN_DANCE
	db 45, SPLASH
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, SPLASH
	db 1, HARDEN
	db 4, DISARM
	db 7, SPLASH
	db 10, HARDEN
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 42, RAIN_DANCE
	db 55, SPLASH
	db 68, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SLOW_DOWN
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, SUPERSONIC
	db 23, SEND_AWAY
	db 28, GUST
	db 34, PSYBEAM
	db 40, SAFEGUARD
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SLOW_DOWN
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_STRIKES
	db 10, FURY_STRIKES
	db 15, FOCUS_ENERGY
	db 20, SPLASH
	db 25, SPLASH
	db 30, PURSUIT
	db 35, PIN_MISSILE
	db 40, AGILITY
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TIME_SLIP
	db 6, HURRICANE
	db 6, RAGING_FURY
	db 6, BLAST_BURN
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 1, GUST
	db 5, SMOKESCREEN
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, SEND_AWAY
	db 33, WING_ATTACK
	db 43, AGILITY
	db 55, SPLASH
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SMOKESCREEN
	db 1, GUST
	db 1, QUICK_ATTACK
	db 5, SMOKESCREEN
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, SEND_AWAY
	db 33, WING_ATTACK
	db 46, AGILITY
	db 61, SPLASH
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 7, QUICK_ATTACK
	db 13, SPLASH
	db 20, FOCUS_ENERGY
	db 27, PURSUIT
	db 34, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, QUICK_ATTACK
	db 7, QUICK_ATTACK
	db 13, SPLASH
	db 19, SCARY_FACE
	db 30, PURSUIT
	db 40, SUPER_FANG
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, DISARM
	db 13, FURY_STRIKES
	db 25, PURSUIT
	db 31, SPLASH
	db 37, DRILL_PECK
	db 43, AGILITY
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, DISARM
	db 1, FURY_STRIKES
	db 7, DISARM
	db 13, FURY_STRIKES
	db 26, PURSUIT
	db 32, SPLASH
	db 40, DRILL_PECK
	db 47, AGILITY
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, DISARM
	db 9, POISON_STING
	db 15, BITE
	db 23, GLARE
	db 29, SCREECH
	db 37, ACID
	db 43, HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, DISARM
	db 1, POISON_STING
	db 1, BITE
	db 9, POISON_STING
	db 15, BITE
	db 25, GLARE
	db 33, SCREECH
	db 43, ACID
	db 51, HAZE
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

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, SMOKESCREEN
	db 17, POISON_STING
	db 23, SLASH
	db 30, SWIFT
	db 37, FURY_STRIKES
	db 45, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SMOKESCREEN
	db 6, DEFENSE_CURL
	db 11, SMOKESCREEN
	db 17, POISON_STING
	db 24, SLASH
	db 33, SWIFT
	db 42, FURY_STRIKES
	db 52, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, DISARM
	db 30, BITE
	db 38, FURY_STRIKES
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, DISARM
	db 36, BITE
	db 46, FURY_STRIKES
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, DISARM
	db 23, BODY_SLAM
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_STRIKES
	db 38, SPLASH
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, DISARM
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, FOCUS_ENERGY
	db 36, FURY_STRIKES
	db 46, SPLASH
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, TACKLE ;Pound
	db 1, GROWL
	db 1, SING
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
	db 1, SING
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

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, DISARM
	db 7, QUICK_ATTACK
	db 13, SEND_AWAY
	db 19, CONFUSE_RAY
	db 25, SAFEGUARD
	db 31, FLAMETHROWER
	db 37, FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 43, FIRE_SPIN
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, TACKLE
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, SPLASH
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, SPLASH
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 27, WING_ATTACK
	db 36, BLOCK
	db 46, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 42, BLOCK
	db 55, HAZE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 32, HEALING_LIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 24, ACID
	db 35, HEALING_LIGHT
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 25, SPORE
	db 31, SLASH
	db 37, GROWTH
	db 43, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 28, SPORE
	db 37, SLASH
	db 46, GROWTH
	db 55, GIGA_DRAIN
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, SPLASH
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, SPLASH
	db 1, SUPERSONIC
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 31, GUST
	db 36, PSYBEAM
	db 42, SLEEP_POWDER
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, SPLASH
	db 17, DIG
	db 25, SMOKESCREEN
	db 33, SLASH
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, SPLASH
	db 5, GROWL
	db 9, SPLASH
	db 17, DIG
	db 25, SMOKESCREEN
	db 37, SLASH
	db 49, EARTHQUAKE
	db 61, FISSURE
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
	db 40, HYPNOSIS
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
	db 48, HYPNOSIS
	db 54, PLAY_ROUGH
	db 60, NIGHT_SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, DISARM
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, BULK_UP
	db 40, FURY_STRIKES
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DISARM
	db 1, DISABLE
	db 1, CONFUSION
	db 5, DISARM
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, BULK_UP
	db 44, FURY_STRIKES
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DISARM
	db 9, SPLASH
	db 15, SPLASH
	db 21, FURY_STRIKES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DISARM
	db 1, SPLASH
	db 1, SPLASH
	db 9, SPLASH
	db 15, SPLASH
	db 21, FURY_STRIKES
	db 27, FOCUS_ENERGY
	db 28, SPLASH
	db 36, SEISMIC_TOSS
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, SEND_AWAY
	db 9, EMBER
	db 18, DISARM
	db 26, TAKE_DOWN
	db 34, FLAME_WHEEL
	db 42, AGILITY
	db 50, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, SEND_AWAY
	db 1, DISARM
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 50, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, ROLLOUT
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, SPLASH
	db 27, RAIN_DANCE
	db 35, BODY_SLAM
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, SPLASH
	db 1, SPLASH
	db 35, SPLASH
	db 51, SPLASH
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_TRADE, -1, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, SPLASH
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, SPLASH
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, DISARM
	db 7, FOCUS_ENERGY
	db 13, SPLASH
	db 19, SEISMIC_TOSS
	db 25, SPLASH
	db 31, SPLASH
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 49, SPLASH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_TRADE, -1, MACHAMP
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, DISARM
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, SPLASH
	db 19, SEISMIC_TOSS
	db 25, SPLASH
	db 34, SPLASH
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SPLASH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, DISARM
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, SPLASH
	db 19, SEISMIC_TOSS
	db 25, SPLASH
	db 34, SPLASH
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SPLASH
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

TentacoolEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, SPLASH
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 36, SPLASH
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, SPLASH
	db 21, SELFDESTRUCT
	db 26, HARDEN
	db 31, ROLLOUT
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_TRADE, -1, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, SPLASH
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 1, SPLASH
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, SPLASH
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DISARM
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, DISARM
	db 1, EMBER
	db 4, GROWL
	db 8, DISARM
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 40, FURY_STRIKES
	db 47, AGILITY
	db 61, FIRE_BLAST
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
	db 4, SUPERSONIC
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
	db 1, SUPERSONIC
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
	db 1, SUPERSONIC
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

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_STRIKES
	db 21, TRI_ATTACK
	db 25, SPLASH
	db 33, DRILL_PECK
	db 37, AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_STRIKES
	db 9, PURSUIT
	db 13, FURY_STRIKES
	db 21, TRI_ATTACK
	db 25, SPLASH
	db 38, DRILL_PECK
	db 47, AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 1, AURORA_BEAM
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 43, ICE_BEAM
	db 60, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 40, SPLASH
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, HARDEN
	db 33, HARDEN
	db 37, DISABLE
	db 45, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 45, SPLASH
	db 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WATER_GUN
	db 4, HARDEN
	db 8, DISARM
	db 12, WHIRLPOOL
	db 16, SUPERSONIC
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
	db 16, SUPERSONIC
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
	db 4, HYPNOSIS
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
	db 1, HYPNOSIS
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
	db 1, HYPNOSIS
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

OnixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, SPLASH
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, SPLASH
	db 36, SANDSTORM
	db 40, SPLASH
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 36, SPLASH
	db 40, PSYCHIC_M
	db 43, BULK_UP
	db 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 33, POISON_GAS
	db 40, SPLASH
	db 49, PSYCHIC_M
	db 55, BULK_UP
	db 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, DISARM
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, FATAL_BLOW
	db 34, PROTECT
	db 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, DISARM
	db 1, VICEGRIP
	db 5, DISARM
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, FATAL_BLOW
	db 38, PROTECT
	db 49, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 32, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SCREECH
	db 17, SPLASH
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db EVOLVE_LEVEL, 42, EXEGGCUTE
	db 1, TACKLE
	db 1, SCREECH
	db 1, SPLASH
	db 1, SELFDESTRUCT
	db 9, SCREECH
	db 17, SPLASH
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, SPLASH
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
	db 5, TWISTER
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
	db 12, SUPERSONIC
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
	db 12, SUPERSONIC
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

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SPLASH
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SPLASH
	db 1, SELFDESTRUCT
	db 9, SPLASH
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISARM
	db 1, FURY_STRIKES
	db 5, ROCK_THROW
	db 10, BULLDOZE
	db 15, HORN_ATTACK
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
	db 15, HORN_ATTACK
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
	db 15, HORN_ATTACK
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
	db 4, SING
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
	db 4, SING
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

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 7, DISARM
	db 13, BITE
	db 19, DISARM
	db 25, SPLASH
	db 31, SPLASH
	db 37, ENDURE
	db 43, SPLASH
	db 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, SPLASH
	db 8, SMOKESCREEN
	db 15, DISARM
	db 22, WATER_GUN
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_LEVEL, 40, GOLDEEN
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SMOKESCREEN
	db 1, DISARM
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, DISARM
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, DISARM
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_STRIKES
	db 38, WATERFALL
	db 43, SPLASH
	db 52, AGILITY
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

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, DISARM
	db 1, THUNDERPUNCH
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 36, SCREECH
	db 47, THUNDERBOLT
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, DISARM
	db 1, SPLASH
	db 1, FIRE_PUNCH
	db 7, DISARM
	db 13, SPLASH
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, PRAXE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, VICEGRIP
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
	db 52, CROSS_CHOP
	db 0 ; no more level-up moves

PraxeEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN
	db 1, VICEGRIP
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
	db 52, CROSS_CHOP
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
	db 1, TWISTER
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

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, RAIN_DANCE
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
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

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, HARDEN
	db 13, BITE
	db 19, WATER_GUN
	db 31, DISARM
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, HARDEN
	db 1, BITE
	db 13, BITE
	db 19, WATER_GUN
	db 31, DISARM
	db 37, PROTECT
	db 40, SPLASH
	db 54, ANCIENTPOWER
	db 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, DISARM
	db 28, SMOKESCREEN
	db 37, ENDURE
	db 46, MEGA_DRAIN
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 10, ABSORB
	db 19, DISARM
	db 28, SMOKESCREEN
	db 37, ENDURE
	db 40, SLASH
	db 51, MEGA_DRAIN
	db 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db EVOLVE_LEVEL, 39, SNORLAX
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SWORDS_DANCE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 39, LANTURN
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 29, CONFUSE_RAY
	db 37, TAKE_DOWN
	db 41, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, THUNDER_WAVE
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 33, CONFUSE_RAY
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

RagingBoltEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP
	db 1, DISARM ;Leer ---> Fused Move
	db 1, TWISTER
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
	db 1, TWISTER
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

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, DISARM
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, SPLASH
	db 29, SPLASH
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, DISARM
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, SPLASH
	db 29, SPLASH
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, DISARM
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, SPLASH
	db 29, SPLASH
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
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

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 10, TRANSFORM
	db 20, SPLASH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
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
	db 32, HYPNOSIS ;Egg Move
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
	db 37, HYPNOSIS ;Egg Move
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
	db 38, HYPNOSIS ;Egg Move
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

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, SPLASH
	db 11, PECK
	db 16, HYPNOSIS
	db 22, REFLECT
	db 28, TAKE_DOWN
	db 34, CONFUSION
	db 48, CALM_MIND
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, SPLASH
	db 1, PECK
	db 6, SPLASH
	db 11, PECK
	db 16, HYPNOSIS
	db 25, REFLECT
	db 33, TAKE_DOWN
	db 41, CONFUSION
	db 57, CALM_MIND
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, SUPERSONIC
	db 15, SPLASH
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 22, SAFEGUARD
	db 29, BATON_PASS
	db 36, SWIFT
	db 43, AGILITY
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SUPERSONIC
	db 8, SUPERSONIC
	db 15, SPLASH
	db 24, LIGHT_SCREEN
	db 24, REFLECT
	db 24, SAFEGUARD
	db 33, BATON_PASS
	db 42, SWIFT
	db 51, AGILITY
	db 60, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaltsEvosAttacks:
	db EVOLVE_LEVEL, 20, KIRLIA
	db 0 ; no more evolutions
	db 1, GROWL
	db 3, DOUBLE_TEAM
	db 6, CONFUSION
	db 9, HYPNOSIS
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
	db 1, HYPNOSIS
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
	db 1, HYPNOSIS
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
	db 1, HYPNOSIS
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
	db 63, CROSS_CHOP
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
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

TinkatuffEvosAttacks:
	db EVOLVE_LEVEL, 25, TINKATON
	db 0 ; no more evolutions
	db 1, PECK
	db 1, DISARM
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 30, FUTURE_SIGHT
	db 40, CONFUSE_RAY
	db 50, PSYCHIC_M
	db 0 ; no more level-up moves

TinkatonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGATON_HAMMER
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
	db 36, HYPNOSIS
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
	db 43, HYPNOSIS
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
	db 46, HYPNOSIS
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
	db 19, SING
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
	db 21, SING
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

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DISARM
	db 6, SMOKESCREEN
	db 12, BATON_PASS
	db 19, FURY_STRIKES
	db 27, SWIFT
	db 36, SCREECH
	db 46, AGILITY
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
	db 1, SING
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
	db 22, SUPERSONIC
	db 27, LEECH_LIFE
	db 30, ANCIENTPOWER
	db 33, HYPNOSIS
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
	db 22, SUPERSONIC
	db 27, LEECH_LIFE
	db 30, ANCIENTPOWER
	db 33, HYPNOSIS
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

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, DEFENSE_CURL
	db 13, GLARE
	db 18, SPITE
	db 26, PURSUIT
	db 30, SCREECH
	db 38, TAKE_DOWN
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SMOKESCREEN
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 28, FAINT_ATTACK
	db 36, SLASH
	db 44, SCREECH
	db 52, FATAL_BLOW
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 10, SPLASH
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, SPLASH
	db 36, SANDSTORM
	db 40, SPLASH
	db 49, CRUNCH
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, DISARM
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 26, SEND_AWAY
	db 34, SPLASH
	db 43, TAKE_DOWN
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
	db 20, HORN_ATTACK
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

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DISARM
	db 1, LICK
	db 1, FURY_STRIKES
	db 8, LICK
	db 15, FURY_STRIKES
	db 22, FAINT_ATTACK
	db 29, REST
	db 39, SLASH
	db 49, SWORDS_DANCE
	db 59, THRASH
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
	db 1, SUPERSONIC
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

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, SMOKESCREEN
	db 1, DISARM
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, DISARM
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, FLAIL
	db 25, TAKE_DOWN
	db 33, ROLLOUT
	db 41, ENDURE
	db 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, FLAIL
	db 25, FURY_STRIKES
	db 33, ROLLOUT
	db 41, RAPID_SPIN
	db 49, EARTHQUAKE
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, DISARM
	db 15, HYPNOSIS
	db 23, STOMP
	db 31, SMOKESCREEN
	db 40, TAKE_DOWN
	db 49, CONFUSE_RAY
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
	db 13, HYPNOSIS
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

SmoochumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LICK
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 21, CONFUSION
	db 25, SING
	db 33, BLOCK
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, DISARM
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, DISARM
	db 13, SPLASH
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, SPLASH
	db 26, SPLASH
	db 34, ROLLOUT
	db 43, BODY_SLAM
	db 53, HEAL_BELL
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
	
TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, MYSTERY_MOVE
	db 0 ; no more level-up moves	
