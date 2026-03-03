BattleCommand_Pursuit:
; Double damage if the opponent is switching.

	ld hl, wEnemyIsSwitching
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wPlayerIsSwitching
.ok
	ld a, [hl]
	and a
	ret z

	ld hl, wCurDamage + 1
	sla [hl]
	dec hl
	rl [hl]
	ret nc

	xor a ; NO_MOVE
	ld [hli], a
	ld [hl], a
	ret
