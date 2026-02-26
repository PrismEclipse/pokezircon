BattleCommand_Thunderclap:
	call CheckOpponentWentFirst
	jr nz, .failed

	; Now we know that the opponent did pick a move
	call SwitchTurnCore
	call GetBattleVar
	push af
	call SwitchTurnCore
	pop af
.failed
	call AnimateFailedMove
	call TryPrintButItFailed
	jp EndMoveEffect