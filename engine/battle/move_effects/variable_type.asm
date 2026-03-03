Find_VariableType:
; Moves that can change type

; Find the appropriate battle command based on the move index.
; Based on code from engine/battle/ai/redundant.asm
	ld a, BATTLE_VARS_MOVE
	call GetBattleVar

	ld hl, VariableTypeMoves

	push hl
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	pop hl
	ld de, 2
	call IsInHalfwordArray
	ret nc

	inc hl
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

VariableTypeMoves:
	db STOMP, 	BattleCommand_Stomp
	db ROLLOUT, 		BattleCommand_Rollout
	db HIDDEN_POWER,	BattleCommand_HiddenPower
	db MYSTERY_POWER,  BattleCommand_AncientPower
	db -1 ; end

BattleCommand_Stomp:
; hiddenpower

	ld a, [wAttackMissed]
	and a
	ret nz
	farcall StompType
	ret
	
BattleCommand_Rollout:
; rollout or ice ball

	ld a, [wAttackMissed]
	and a
	ret nz
	farcall RolloutType
	ret	
	
BattleCommand_AncientPower:
; Ancient Power or Omninous Wind

	ld a, [wAttackMissed]
	and a
	ret nz
	farcall MysteryPowerType
	ret		