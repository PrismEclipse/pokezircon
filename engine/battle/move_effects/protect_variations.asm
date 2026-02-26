; Additional handling for Spiky Shield, King's Shield,
; Baneful Bunker, and Obstruct.

CheckProtectionCategory:
; Return z if the opponent is not protected

; Find out which protection move the opponent used.
	farcall BattleCommand_SwitchTurn
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_BURNING_BULWARK

; None of the above
	farcall BattleCommand_SwitchTurn

GetProtectVariationEffect:
; Get additional effects for Spiky Shield, King's Shield,
; Baneful Bunker, and Obstruct.

; Find out which protection move the opponent used.
	farcall BattleCommand_SwitchTurn
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_BURNING_BULWARK
	jr z, .burning_bulwark

; None of the above
	farcall BattleCommand_SwitchTurn
	ret

 .burning_bulwark
; Burn the attacker.
	 farcall BattleCommand_BurnTarget
	 farcall BattleCommand_SwitchTurn
	 ret