; Used by GetMoveGrammar (see engine/battle/used_move_text.asm)
; Each move is given an identifier for what usedmovetext to use (0-4).
; Made redundant in English localization, where all are just "[mon]<LINE>used [move]!"
; TODO: Research how move Grammar for Gen 3+ Moves are shown in-game for Japanese Games to apply to English.

MoveGrammar:
; 0: originally "[mon]は<LINE>[move]を　つかった！" ("[mon]<LINE>used [move]!")
	db SWORDS_DANCE
	db GROWTH
	db STRENGTH
	db HARDEN
	db MINIMIZE
	db SMOKESCREEN
	db DEFENSE_CURL
	db FLASH
	db SPLASH
	db BONEMERANG
	db REST
	db SUBSTITUTE
	db PROTECT
	db SPIKES
	db ENDURE
	db ROLLOUT
	db SWAGGER
	db SLEEP_TALK
	db HIDDEN_POWER
	db EXTREMESPEED
	db 0 ; end set

; 1: originally "[mon]は<LINE>[move]した！" ("[mon]<LINE>did [move]!")
	db RECOVER
	db TELEPORT
	db SELFDESTRUCT
	db AMNESIA
	db FLAIL
	db 0 ; end set

; 2: originally "[mon]は<LINE>[move]を　した！" ("[mon]<LINE>did [move]!")
	db AGILITY
	db DOUBLE_TEAM
	db TRANSFORM
	db STRUGGLE
	db SCARY_FACE
	db 0 ; end set

; 3: originally "[mon]の<LINE>[move]　こうげき！" ("[mon]'s<LINE>[move] attack!")
	db TACKLE
	db SCRATCH
	db VICEGRIP
	db WING_ATTACK
	db FLY
	db HORN_ATTACK
	db WRAP
	db THRASH
	db DISARM
	db BITE
	db GROWL
	db SEND_AWAY
	db SING
	db PECK
	db ABSORB
	db SLOW_DOWN
	db EARTHQUAKE
	db FISSURE
	db DIG
	db TOXIC
	db SCREECH
	db METRONOME
	db LICK
	db POISON_GAS
	db SLASH
	db CURSE
	db CHARM
	db ATTRACT
	db ROCK_SMASH
	db 0 ; end set

; 4: originally "[mon]の<LINE>[move]!" ("[mon]'s<LINE>[move]!")
; Any move not listed above uses this grammar.
	db -1 ; end
