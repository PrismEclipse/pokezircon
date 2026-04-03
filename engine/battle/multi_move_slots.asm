GetTackleName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckPoundUsers
	jr nc, .not_tackle
	ld hl, TackleNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_tackle
	call CheckScratchUsers
	jr nc, .not_scratch
	ld hl, TackleNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_scratch
	ld hl, TackleNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone

GetMoveNameTackle:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckPoundUsers
	jr nc, .not_tackle
	ld hl, TackleNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_tackle
	call CheckScratchUsers
	jr nc, .not_scratch
	ld hl, TackleNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_scratch
	ld hl, TackleNames
	ld a, 2
	jp GetMoveNameDone2

GetDefenseCurlName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckWithdrawUsers
	jr nc, .not_withdraw
	ld hl, DefenseCurlNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_withdraw
	call CheckHardenUsers
	jr nc, .not_harden
	ld hl, DefenseCurlNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_harden
	ld hl, DefenseCurlNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone

GetMoveNameDefenseCurl:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckWithdrawUsers
	jr nc, .not_withdraw
	ld hl, DefenseCurlNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_withdraw
	call CheckHardenUsers
	jr nc, .not_harden
	ld hl, DefenseCurlNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_harden
	ld hl, DefenseCurlNames
	ld a, 2
	jp GetMoveNameDone2
	
GetLeerName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckTailWhipUsers
	jr nc, .not_tailwhip
	ld hl, LeerNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_tailwhip
	ld hl, LeerNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameLeer:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckTailWhipUsers
	jr nc, .not_tailwhip
	ld hl, LeerNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_tailwhip
	ld hl, LeerNames
	ld a, 1
	jp GetMoveNameDone2
	
GetBarrierName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckIronDefenseUsers
	jr nc, .not_iron_defense
	ld hl, BarrierNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_iron_defense
	call CheckAcidArmorUsers
	jr nc, .not_acid_armor
	ld hl, BarrierNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_acid_armor
	ld hl, BarrierNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameBarrier:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckIronDefenseUsers
	jr nc, .not_iron_defense
	ld hl, BarrierNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_iron_defense
	call CheckAcidArmorUsers
	jr nc, .not_acid_armor
	ld hl, BarrierNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_acid_armor
	ld hl, BarrierNames
	ld a, 2
	jp GetMoveNameDone2
	
GetLockOnName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckMindReaderUsers
	jr nc, .not_mind_reader
	ld hl, LockOnNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_mind_reader
	ld hl, LockOnNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameLockOn:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckMindReaderUsers
	jr nc, .not_mind_reader
	ld hl, LockOnNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_mind_reader
	ld hl, LockOnNames
	ld a, 1
	jp GetMoveNameDone2
	
GetSharpenName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckMeditateUsers
	jr nc, .not_meditate
	ld hl, SharpenNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_meditate
	call CheckHowlUsers
	jr nc, .not_howl
	ld hl, SharpenNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_howl
	ld hl, SharpenNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone

GetMoveNameSharpen:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckMeditateUsers
	jr nc, .not_meditate
	ld hl, SharpenNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_meditate
	call CheckHowlUsers
	jr nc, .not_howl
	ld hl, SharpenNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_howl
	ld hl, SharpenNames
	ld a, 2
	jp GetMoveNameDone2
	
GetFurySwipesName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckFuryAttackUsers
	jr nc, .not_fury_attack
	ld hl, FurySwipesNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_fury_attack
	call CheckCometPunchUsers
	jr nc, .not_comet_punch
	ld hl, FurySwipesNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_comet_punch
	call CheckDoubleSlapUsers
	jr nc, .not_doubleslap
	ld hl, FurySwipesNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_doubleslap
	call CheckBarrageUsers
	jr nc, .not_barrage
	ld hl, FurySwipesNames
	ld a, 3
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_barrage
	call CheckSpikeCannonUsers
	jr nc, .not_spike_cannon
	ld hl, FurySwipesNames
	ld a, 4
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_spike_cannon
	ld hl, FurySwipesNames
	ld a, 5
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameFurySwipes:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckFuryAttackUsers
	jr nc, .not_fury_attack
	ld hl, FurySwipesNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_fury_attack
	call CheckCometPunchUsers
	jr nc, .not_comet_punch
	ld hl, FurySwipesNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_comet_punch
	call CheckDoubleSlapUsers
	jr nc, .not_doubleslap
	ld hl, FurySwipesNames
	ld a, 2
	jp GetMoveNameDone2
	
.not_doubleslap
	call CheckBarrageUsers
	jr nc, .not_barrage
	ld hl, FurySwipesNames
	ld a, 3
	jp GetMoveNameDone2
	
.not_barrage
	call CheckSpikeCannonUsers
	jr nc, .not_spike_cannon
	ld hl, FurySwipesNames
	ld a, 4
	jp GetMoveNameDone2
	
.not_spike_cannon
	ld hl, FurySwipesNames
	ld a, 5
	jp GetMoveNameDone2
	
GetSynthesisName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckMoonlightUsers
	jr nc, .not_moonlight
	ld hl, SynthesisNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_moonlight
	call CheckMorningSunUsers
	jr nc, .not_morning_sun
	ld hl, SynthesisNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_morning_sun
	ld hl, SynthesisNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone

GetMoveNameSynthesis:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckMoonlightUsers
	jr nc, .not_moonlight
	ld hl, SynthesisNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_moonlight
	call CheckMorningSunUsers
	jr nc, .not_morning_sun
	ld hl, SynthesisNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_morning_sun
	ld hl, SynthesisNames
	ld a, 2
	jp GetMoveNameDone2
	
GetMeanLookName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckBlockUsers
	jr nc, .not_block
	ld hl, MeanLookNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_block
	call CheckSpiderWebUsers
	jr nc, .not_spider_web
	ld hl, MeanLookNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_spider_web
	ld hl, MeanLookNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone

GetMoveNameMeanLook:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckBlockUsers
	jr nc, .not_block
	ld hl, MeanLookNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_block
	call CheckSpiderWebUsers
	jr nc, .not_spider_web
	ld hl, MeanLookNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_spider_web
	ld hl, MeanLookNames
	ld a, 2
	jp GetMoveNameDone2
	
GetCharmName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckFeatherDanceUsers
	jr nc, .not_feather_dance
	ld hl, CharmNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_feather_dance
	ld hl, CharmNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameCharm:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckFeatherDanceUsers
	jr nc, .not_feather_dance
	ld hl, CharmNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_feather_dance
	ld hl, CharmNames
	ld a, 1
	jp GetMoveNameDone2
	
GetScaryFaceName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckCottonSporeUsers
	jr nc, .not_cotton_spore
	ld hl, ScaryFaceNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_cotton_spore
	call CheckStringShotUsers
	jr nc, .not_string_shot
	ld hl, ScaryFaceNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_string_shot
	ld hl, ScaryFaceNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameScaryFace:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckCottonSporeUsers
	jr nc, .not_cotton_spore
	ld hl, ScaryFaceNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_cotton_spore
	call CheckStringShotUsers
	jr nc, .not_string_shot
	ld hl, ScaryFaceNames
	ld a, 1
	jp GetMoveNameDone2
.not_string_shot
	ld hl, ScaryFaceNames
	ld a, 2
	jp GetMoveNameDone2
	
GetRoarName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckWhirlwindUsers
	jr nc, .not_whirlwind
	ld hl, RoarNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_whirlwind
	ld hl, RoarNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameRoar:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	call CheckWhirlwindUsers
	jr nc, .not_whirlwind
	ld hl, RoarNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_whirlwind
	ld hl, RoarNames
	ld a, 1
	jp GetMoveNameDone2
	
GetHealBellName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckAromatherapyUsers
	jr nc, .not_aromatherapy
	ld hl, HealBellNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_aromatherapy
	ld hl, HealBellNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameHealBell:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	call CheckAromatherapyUsers
	jr nc, .not_aromatherapy
	ld hl, HealBellNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_aromatherapy
	ld hl, HealBellNames
	ld a, 1
	jp GetMoveNameDone2
	
GetSandAttackName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckFlashUsers
	jr nc, .not_flash
	ld hl, SandAttackNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_flash
	call CheckSmokescreenUsers
	jr nc, .not_smokescreen
	ld hl, SandAttackNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_smokescreen
	ld hl, SandAttackNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameSandAttack:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	call CheckFlashUsers
	jr nc, .not_flash
	ld hl, SandAttackNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_flash
	call CheckSmokescreenUsers
	jr nc, .not_smokescreen
	ld hl, SandAttackNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_smokescreen
	ld hl, SandAttackNames
	ld a, 2
	jp GetMoveNameDone2
	
GetSoftboiledName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckSoftboiledUsers
	jr nc, .not_softboiled
	ld hl, SoftboiledNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_softboiled
	ld hl, SoftboiledNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone

GetMoveNameSoftboiled:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	call CheckSoftboiledUsers
	jr nc, .not_softboiled
	ld hl, SoftboiledNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_softboiled
	ld hl, SoftboiledNames
	ld a, 1
	jp GetMoveNameDone2
	
GetAgilityName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckRockPolishUsers
	jr nc, .not_rock_polish
	ld hl, AgilityNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_rock_polish
	ld hl, AgilityNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameAgility:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckRockPolishUsers
	jr nc, .not_rock_polish
	ld hl, AgilityNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_rock_polish
	ld hl, AgilityNames
	ld a, 1
	jp GetMoveNameDone2

	
GetSingName::
	ldh a, [hROMBank]
	push af
	push hl
	push bc
	push de

	call CheckHypnosisUsers
	jr nc, .not_hypnosis
	ld hl, SingNames
	ld a, 0
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_hypnosis
	call CheckGrassWhistleUsers
	jr nc, .not_grasswhistle
	ld hl, SingNames
	ld a, 1
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
.not_grasswhistle
	ld hl, SingNames
	ld a, 2
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	jp GetMoveNameDone
	
GetMoveNameSing:: ; 34f8
	ldh a, [hROMBank]
	push af
	push hl
	push bc

	
	call CheckHypnosisUsers
	jr nc, .not_hypnosis
	ld hl, SingNames
	ld a, 0
	jp GetMoveNameDone2
	
.not_hypnosis
	call CheckGrassWhistleUsers
	jr nc, .not_grasswhistle
	ld hl, SingNames
	ld a, 1
	jp GetMoveNameDone2
	
.not_grasswhistle
	ld hl, SingNames
	ld a, 2
	jp GetMoveNameDone2

GetMoveNameDone:
	pop de
	pop bc
	pop hl
	pop af
	call Bankswitch
	ret

GetMoveNameDone2:
	call GetNthString
	ld de, wStringBuffer1
	ld bc, ITEM_NAME_LENGTH
	call CopyBytes
	ld de, wStringBuffer1
	pop bc
	pop hl
	pop af
	call Bankswitch
	ret

CheckDitto:
	cp DITTO
	ret nz
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	ret z
	ld a, [wEnemyMonSpecies]
	ret
	
CheckPoundUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckPoundUsers2::
	ld hl, PoundUsers
	ld de, 1
	call IsInArray
	ret
	
CheckScratchUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckScratchUsers2::
	ld hl, ScratchUsers
	ld de, 1
	call IsInArray
	ret

CheckWithdrawUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckWithdrawUsers2::
	ld hl, WithdrawUsers
	ld de, 1
	call IsInArray
	ret
	
CheckHardenUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckHardenUsers2::
	ld hl, HardenUsers
	ld de, 1
	call IsInArray
	ret
	
CheckTailWhipUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckTailWhipUsers2::
	ld hl, TailWhipUsers
	ld de, 1
	call IsInArray
	ret
	
CheckIronDefenseUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckIronDefenseUsers2::
	ld hl, IronDefenseUsers
	ld de, 1
	call IsInArray
	ret
	
CheckAcidArmorUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckAcidArmorUsers2::
	ld hl, AcidArmorUsers
	ld de, 1
	call IsInArray
	ret
	
CheckMindReaderUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckMindReaderUsers2::
	ld hl, MindReaderUsers
	ld de, 1
	call IsInArray
	ret
	
CheckMeditateUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckMeditateUsers2::
	ld hl, MeditateUsers
	ld de, 1
	call IsInArray
	ret
	
CheckHowlUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckHowlUsers2::
	ld hl, HowlUsers
	ld de, 1
	call IsInArray
	ret
	
CheckFuryAttackUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckFuryAttackUsers2::
	ld hl, FuryAttackUsers
	ld de, 1
	call IsInArray
	ret
	
CheckCometPunchUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckCometPunchUsers2::
	ld hl, CometPunchUsers
	ld de, 1
	call IsInArray
	ret
	
CheckDoubleSlapUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckDoubleSlapUsers2::
	ld hl, DoubleSlapUsers
	ld de, 1
	call IsInArray
	ret
	
CheckBarrageUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckBarrageUsers2::
	ld hl, BarrageUsers
	ld de, 1
	call IsInArray
	ret

CheckSpikeCannonUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckSpikeCannonUsers2::
	ld hl, SpikeCannonUsers
	ld de, 1
	call IsInArray
	ret

CheckMoonlightUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckMoonlightUsers2::
	ld hl, MoonlightUsers
	ld de, 1
	call IsInArray
	ret
	
CheckMorningSunUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckMorningSunUsers2::
	ld hl, MorningSunUsers
	ld de, 1
	call IsInArray
	ret
	
CheckBlockUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckBlockUsers2::
	ld hl, BlockUsers
	ld de, 1
	call IsInArray
	ret
	
CheckSpiderWebUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckSpiderWebUsers2::
	ld hl, SpiderWebUsers
	ld de, 1
	call IsInArray
	ret
	
CheckFeatherDanceUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckFeatherDanceUsers2::
	ld hl, FeatherDanceUsers
	ld de, 1
	call IsInArray
	ret
	
CheckCottonSporeUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckCottonSporeUsers2::
	ld hl, CottonSporeUsers
	ld de, 1
	call IsInArray
	ret
	
CheckStringShotUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckStringShotUsers2::
	ld hl, StringShotUsers
	ld de, 1
	call IsInArray
	ret
	
CheckWhirlwindUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckWhirlwindUsers2::
	ld hl, WhirlwindUsers
	ld de, 1
	call IsInArray
	ret
	
CheckAromatherapyUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckAromatherapyUsers2::
	ld hl, AromatherapyUsers
	ld de, 1
	call IsInArray
	ret
	
CheckFlashUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckFlashUsers2::
	ld hl, FlashUsers
	ld de, 1
	call IsInArray
	ret
	
CheckSmokescreenUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckSmokescreenUsers2::
	ld hl, SmokescreenUsers
	ld de, 1
	call IsInArray
	ret
	
CheckSoftboiledUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckSoftboiledUsers2::
	ld hl, SoftboiledUsers
	ld de, 1
	call IsInArray
	ret
	
CheckRockPolishUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckRockPolishUsers2::
	ld hl, RockPolishUsers
	ld de, 1
	call IsInArray
	ret
	
CheckHypnosisUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckHypnosisUsers2::
	ld hl, HypnosisUsers
	ld de, 1
	call IsInArray
	ret
	
CheckGrassWhistleUsers::
	ld a, [wCurPartySpecies]
	call CheckDitto
CheckGrassWhistleUsers2::
	ld hl, GrassWhistleUsers
	ld de, 1
	call IsInArray
	ret
	
CheckMultiMoveSlot::
	ld a, [wCurMove]
CheckMultiMoveSlot2::
	ld hl, MultiSlotMoves
	ld de, 1
	call IsInArray
	ret
	
GetMultiMoveSlotName::
	ld a, [wCurMove]
GetMultiMoveSlotName2::
	cp TACKLE
	jr z, .tackle
	cp HARDEN
	jr z, .defense_curl
	cp DISARM
	jr z, .leer
	cp IRON_DEFENSE
	jr z, .barrier
	cp LOCK_ON
	jr z, .lock_on
	cp HOWL
	jr z, .sharpen
	cp FURY_STRIKES
	jr z, .fury_swipes
	cp HEALING_LIGHT
	jr z, .synthesis
	cp BLOCK
	jr z, .mean_look
	cp CHARM
	jr z, .charm
	cp SLOW_DOWN
	jr z, .scary_face
	cp SEND_AWAY
	jr z, .roar
	cp HEAL_BELL
	jr z, .heal_bell
	cp SMOKESCREEN
	jr z, .sand_attack
	cp RECOVER
	jr z, .softboiled
	cp AGILITY
	jr z, .agility
	cp HYPNOTIZE
	jr z, .sing
	jr .end
.tackle
	call GetMoveNameTackle
	jr .end
.defense_curl
	call GetMoveNameDefenseCurl
	jr .end
.leer
	call GetMoveNameLeer
	jr .end
.barrier
	call GetMoveNameBarrier
	jr .end
.lock_on
	call GetMoveNameLockOn
	jr .end
.sharpen
	call GetMoveNameSharpen
	jr .end
.fury_swipes
	call GetMoveNameFurySwipes
	jr .end
.synthesis
	call GetMoveNameSynthesis
	jr .end
.mean_look
	call GetMoveNameMeanLook
	jr .end
.charm
	call GetMoveNameCharm
	jr .end
.scary_face
	call GetMoveNameScaryFace
	jr .end
.roar
	call GetMoveNameRoar
	jr .end
.heal_bell
	call GetMoveNameHealBell
	jr .end
.sand_attack
	call GetMoveNameSandAttack
	jr .end
.softboiled
	call GetMoveNameSoftboiled
	jr .end
.agility
	call GetMoveNameAgility
	jr .end
.sing
	call GetMoveNameSing
.end
	ret

CheckTackleThing::
	push de
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species1
	ld a, [wBattleMonSpecies]
	jr .got_user_species1
	
.skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species1
	ld a, [wEnemyMonSpecies]
.got_user_species1
	farcall CheckPoundUsers2
	pop de
	jr nc, .not_pound
	ld a, $2
	ld [wKickCounter], a
	ret
.not_pound
	push de
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2

.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckScratchUsers2
	pop de
	jr nc, .not_scratch
	ld a, $3
	ld [wKickCounter], a
	ret

.not_scratch
	ld a, $1
	ld [wKickCounter], a
	ret

CheckFuryStrikesThing::
	push de
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species1
	ld a, [wBattleMonSpecies]
	jr .got_user_species1
	
.skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species1
	ld a, [wEnemyMonSpecies]
.got_user_species1
	farcall CheckFuryAttackUsers2
	pop de
	jr nc, .not_fury_attack
	ld a, $2
	ld [wKickCounter], a
	ret
.not_fury_attack
	push de
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2
	
.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckCometPunchUsers2
	pop de
	jr nc, .not_comet_punch
	ld a, $3
	ld [wKickCounter], a
	ret
.not_comet_punch
	push de
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip3
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species3
	ld a, [wBattleMonSpecies]
	jr .got_user_species3
	
.skip3
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species3
	ld a, [wEnemyMonSpecies]
.got_user_species3
	farcall CheckDoubleSlapUsers2
	pop de
	jr nc, .not_doubleslap
	ld a, $4
	ld [wKickCounter], a
	ret
.not_doubleslap
	push de
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip4
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species4
	ld a, [wBattleMonSpecies]
	jr .got_user_species4
	
.skip4
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species4
	ld a, [wEnemyMonSpecies]
.got_user_species4
	farcall CheckBarrageUsers2
	pop de
	jr nc, .not_barrage
	ld a, $5
	ld [wKickCounter], a
	ret
.not_barrage
	push de
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip5
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species4
	ld a, [wBattleMonSpecies]
	jr .got_user_species5
	
.skip5
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species5
	ld a, [wEnemyMonSpecies]
.got_user_species5
	farcall CheckSpikeCannonUsers2
	pop de
	jr nc, .not_spike_cannon
	ld a, $6
	ld [wKickCounter], a
	ret

.not_spike_cannon
	ld a, $1
	ld [wKickCounter], a
	ret
	
CheckDefenseCurlThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species1
	ld a, [wBattleMonSpecies]
	jr .got_user_species1
	
.skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species1
	ld a, [wEnemyMonSpecies]
.got_user_species1
	farcall CheckWithdrawUsers2
	jr nc, .not_withdraw
	ld a, $1
	ret
.not_withdraw
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2
	
.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckHardenUsers2
	jr nc, .not_harden
	ld a, $2
	ret
.not_harden
	ret
	
CheckLeerThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species
	ld a, [wBattleMonSpecies]
	jr .got_user_species
	
.skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species
	ld a, [wEnemyMonSpecies]
.got_user_species
	farcall CheckTailWhipUsers2
	jr nc, .not_tailwhip
	ld a, $1
	ret
.not_tailwhip
	ret
	
CheckBarrierThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species1
	ld a, [wBattleMonSpecies]
	jr .got_user_species1
	
.skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species1
	ld a, [wEnemyMonSpecies]
.got_user_species1
	farcall CheckIronDefenseUsers2
	jr nc, .not_iron_defense
	ld a, $1
	ret
.not_iron_defense
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2
	
.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckAcidArmorUsers2
	jr nc, .not_acid_armor
	ld a, $2
	ret
.not_acid_armor
	ret
	
CheckSharpenThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species1
	ld a, [wBattleMonSpecies]
	jr .got_user_species1
	
.skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species1
	ld a, [wEnemyMonSpecies]
.got_user_species1
	farcall CheckMeditateUsers2
	jr nc, .not_meditate
	ld a, $1
	ret
.not_meditate
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2
	
.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckHowlUsers2
	jr nc, .not_howl
	ld a, $2
	ret
.not_howl
	ret
	
CheckCharmThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species
	ld a, [wBattleMonSpecies]
	jr .got_user_species
	
.skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species
	ld a, [wEnemyMonSpecies]
.got_user_species
	farcall CheckFeatherDanceUsers2
	jr nc, .not_feather_dance
	ld a, $1
	ret
.not_feather_dance
	ret
	
CheckScaryFaceThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species1
	ld a, [wBattleMonSpecies]
	jr .got_user_species1
	
.skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species1
	ld a, [wEnemyMonSpecies]
.got_user_species1
	farcall CheckCottonSporeUsers2
	jr nc, .not_scary_face
	ld a, $1
	ret
.not_scary_face
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2
	
.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckStringShotUsers2
	jr nc, .not_string_shot
	ld a, $2
	ret
.not_string_shot
	ret
	
CheckRoarThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species
	ld a, [wBattleMonSpecies]
	jr .got_user_species
	
.skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species
	ld a, [wEnemyMonSpecies]
.got_user_species
	farcall CheckWhirlwindUsers2
	jr nc, .not_whirlwind
	ld a, $1
	ret
.not_whirlwind
	ret
	
CheckHealBellThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species
	ld a, [wBattleMonSpecies]
	jr .got_user_species
	
.skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species
	ld a, [wEnemyMonSpecies]
.got_user_species
	farcall CheckAromatherapyUsers2
	jr nc, .not_aromatherapy
	ld a, $1
	ret
.not_aromatherapy
	ret
	
CheckSandAttackThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species1
	ld a, [wBattleMonSpecies]
	jr .got_user_species1
	
.skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species1
	ld a, [wEnemyMonSpecies]
.got_user_species1
	farcall CheckFlashUsers2
	jr nc, .not_flash
	ld a, $1
	ret
.not_flash
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2
	
.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckSmokescreenUsers2
	jr nc, .not_smokescreen
	ld a, $2
	ret
.not_smokescreen
	ret
	
CheckSoftboiledThing::
	jr z, .skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species1
	ld a, [wBattleMonSpecies]
	jr .got_user_species1
	
.skip1
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species1
	ld a, [wEnemyMonSpecies]
.got_user_species1
	farcall CheckMilkDrinkUsers2
	jr nc, .not_milk_drink
	ld a, $1
	ret
.not_milk_drink
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2
	
.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckSoftboiledUsers2
	jr nc, .not_softboiled
	ld a, $2
	ret
.not_softboiled
	ret
	
CheckAgilityThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species
	ld a, [wBattleMonSpecies]
	jr .got_user_species
	
.skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species
	ld a, [wEnemyMonSpecies]
.got_user_species
	farcall CheckRockPolishUsers2
	jr nc, .not_rock_polish
	ld a, $1
	ret
.not_rock_polish
	ret
	
CheckSingThing::
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species
	ld a, [wBattleMonSpecies]
	jr .got_user_species
	
.skip
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species
	ld a, [wEnemyMonSpecies]
.got_user_species
	farcall CheckHypnosisUsers2
	jr nc, .not_hypnosis
	ld a, $1
	ret
.not_hypnosis
	ld a, [wMirrorMoveUsed]
	and a
	jr z, .skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonSpecies]
	jr z, .got_user_species2
	ld a, [wBattleMonSpecies]
	jr .got_user_species2
	
.skip2
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .got_user_species2
	ld a, [wEnemyMonSpecies]
.got_user_species2
	farcall CheckGrassWhistleUsers2
	jr nc, .not_grasswhistle
	ld a, $2
	ret
.not_grasswhistle
	ret
	
HandleHealBellAnimation::
	farcall CheckHealBellThing
	ld [wKickCounter], a
	cp 1
	jr z, .aroma
	farcall AnimateCurrentMove

	ld hl, BellChimedText
	farjp StdBattleTextBox
	
.aroma
	farcall AnimateCurrentMove

	ld hl, AromatherapyText
	farjp StdBattleTextBox

PoundUsers:
	db CLEFAIRY
	db CLEFABLE
	db CHANSEY
	db SUNFLORA
	db BLISSEY
	db TREECKO
	db GROVYLE
	db SCEPTILE
	db PIPLUP
	db PRINPLUP
	db EMPOLEON
	db GOLETT
	db GOLURK
	db -1
	
ScratchUsers:
	db MEOWTH
	db PERSIAN
	db SENTRET
	db FURRET
	db TORCHIC
	db COMBUSKEN
	db BLAZIKEN
	db SNEASEL
	db WEAVILE
	db ABSOL
	db DRILBUR
	db EXCADRILL
	db FENNEKIN
	db BRAIXEN
	db DELPHOX
	db MIMIKYU
	db -1

WithdrawUsers:
	db SLOWPOKE
	db SLOWBRO
	db SLOWKING
	db TIRTOUGA
	db CARRACOSTA
	db -1

HardenUsers:
	db STARYU
	db STARMIE
	db SLUGMA
	db MAGCARGO
	db ARON
	db LAIRON
	db AGGRON
	db -1

TailWhipUsers:
	db PIKACHU
	db RAICHU
	db CUBONE
	db MAROWAK
	db RHYHORN
	db RHYDON
	db CHANSEY
	db EEVEE
	db VAPOREON
	db JOLTEON
	db FLAREON
	db MARILL
	db AZUMARILL
	db HOPPIP
	db SKIPLOOM
	db JUMPLUFF
	db WOOPER
	db QUAGSIRE
	db ESPEON
	db UMBREON
	db BLISSEY
	db ZIGZAGOON
	db LINOONE
	db RHYPERIOR
	db FENNEKIN
	db BRAIXEN
	db DELPHOX
	db SKRELP
	db DRAGALGE
	db TYRUNT
	db TYRANTRUM
	db DEDENNE
	db -1
	
IronDefenseUsers:
	db SHELLDER
	db CLOYSTER
	db TURBANN
	db PINECO
	db FORRETRESS
	db SCIZOR
	db PUPITAR
	db TYRANITAR
	db ARON
	db LAIRON
	db AGGRON
	db WHIRLIPEDE
	db SCOLIPEDE
	db GOLETT
	db GOLURK
	db CHARJABUG
	db VIKAVOLT
	db GOLISOPOD
	db SANDYGAST
	db PALOSSAND
	db NECROZMA
	db STAKATAKA
	db FALINKS
	db ORTHWORM
	db MAGNEMITE
	db MAGNETON
	db MAGNEZONE
	db CUBONE
	db MAROWAK
	db RHYHORN
	db RHYDON
	db RHYPERIOR
	db PINSIR
	db PRAXE
	db SLOWKING
	db HERACROSS
	db RELICANTH
	db EMPOLEON
	db DRILBUR
	db EXCADRILL
	db DARMANITAN
	db TIRTOUGA
	db CARRACOSTA
	db ARCHEN
	db ARCHEOPS
	db AMAURA
	db AURORUS
	db TYRUNT
	db TYRANTRUM
	db CORVIKNIGHT
	db ARMAROGUE
	db CERULEDGE
	db VAROOM
	db REVAVROOM
	db -1
	
AcidArmorUsers:
	db VAPOREON
	db GLIMMET
	db GLIMMORA
	db SKRELP
	db DRAGALGE
	db SLUGMA
	db MAGCARGO
	db -1
	
HowlUsers:
	db HOUNDOUR
	db HOUNDOOM
	db FENNEKIN
	db BRAIXEN
	db DELPHOX
	db GOUGING_FIRE
	db -1
	
FuryAttackUsers:
	db FARFETCH_D
	db RHYHORN
	db RHYDON
	db RHYPERIOR
	db LUXWAN
	db HERACROSS
	db PILOSWINE
	db MAMOSWINE
	db SWABLU
	db ALTARIA
	db PIPLUP
	db PRINPLUP
	db EMPOLEON
	db ROWLET
	db DARTRIX
	db DECIDUEYE
	db ROOKIDEE
	db CORVISQUIRE
	db CORVIKNIGHT
	db CRAMORANT
	db -1

CometPunchUsers:
	db AMPHAROS
	db COMBUSKEN
	db BLAZIKEN
	db GOLETT
	db GOLURK
	db HAWLUCHA
	db MALAMAR
	db FALINKS
	db -1
	
SpikeCannonUsers:
	db CLOYSTER
	db -1
	
DoubleSlapUsers:
	db CLEFAIRY
	db CLEFABLE
	db CHANSEY
	db BLISSEY
	db PIKACHU
	db RAICHU
	db -1
	
MoonlightUsers:
	db CLEFAIRY
	db CLEFABLE
	db UMBREON
	db -1
	
MorningSunUsers:
	db ESPEON
	db GOUGING_FIRE
	db -1
	
BlockUsers:
	db TANGOREST
	db STAKATAKA
	db SLOWPOKE
	db SLOWBRO
	db SLOWKING
	db TIRTOUGA
	db CARRACOSTA
	db FORRETRESS
	db TYRANITAR
	db AGGRON
	db WALREIN
	db RHYPERIOR
	db MAMOSWINE
	db GOLETT
	db GOLURK
	db TYRUNT
	db TYRANTRUM
	db MALAMAR
	db ZYGARDE10
	db ZYGARDE50
	db ZYGARDE100
	db SANDYGAST
	db PALOSSAND
	db STAKATAKA
	db -1
	
SpiderWebUsers:
	db JOLTIK
	db GALVANTULA
	db TAROUNTULA
	db SPIDOPS
	db -1
	
FeatherDanceUsers:
	db FARFETCH_D
	db TORCHIC
	db COMBUSKEN
	db BLAZIKEN
	db SWABLU
	db ALTARIA
	db CHATOT
	db HAWLUCHA
	db ROWLET
	db DARTRIX
	db DECIDUEYE
	db ROOKIDEE
	db CORVISQUIRE
	db CORVIKNIGHT
	db PIPLUP
	db PRINPLUP
	db EMPOLEON
	db CRAMORANT
	db -1
	
CottonSporeUsers:
	db MAREEP
	db FLAAFFY
	db AMPHAROS
	db HOPPIP
	db SKIPLOOM
	db JUMPLUFF
	db ROSELIA
	db ROSERADE
	db -1
	
StringShotUsers:
	db YANMA
	db YANMEGA
	db JOLTIK
	db GALVANTULA
	db LARVESTA
	db VOLCARONA
	db GRUBBIN
	db CHARJABUG
	db VIKAVOLT
	db TAROUNTULA
	db SPIDOPS
	db -1
	
WhirlwindUsers:
	db LUGIA
	db HO_OH
	db VOLCARONA
	db FARFETCH_D
	db YANMA
	db YANMEGA
	db TAILLOW
	db SWELLOW
	db -1
	
SmokescreenUsers:
	db FLAREON
	db SKRELP
	db DRAGALGE
	db CHARCADET
	db ARMAROGUE
	db CERULEDGE
	db SPIRITOMB
	db SLUGMA
	db MAGCARGO
	db -1
	
SoftboiledUsers:
	db CHANSEY
	db BLISSEY
	db CLEFAIRY
	db CLEFABLE
	db -1
	
RockPolishUsers:
	db GLIMMET
	db GLIMMORA
	db RHYHORN
	db RHYDON
	db RHYPERIOR
	db TYRUNT
	db TYRANTRUM
	db FORRETRESS
	db MAGCARGO
	db LARVITAR
	db PUPITAR
	db TYRANITAR
	db ARON
	db LAIRON
	db AGGRON
	db RELICANTH
	db TIRTOUGA
	db CARRACOSTA
	db ARCHEN
	db ARCHEOPS
	db GOLETT
	db GOLURK
	db AMAURA
	db AURORUS
	db SANDYGAST
	db PALOSSAND
	db NECROZMA
	db STAKATAKA
	db -1
	
AromatherapyUsers:
	db ROSELIA
	db ROSERADE
	db PETILIL
	db LILLIGANT
	db LILLIGANT_HISUI
	db CUTIEFLY
	db RIBOMBEE
	db HATENNA
	db HATTREM
	db HATTERENE
	db HOPPIP
	db SKIPLOOM
	db JUMPLUFF
	db -1
	
HypnosisUsers:
	db SMEARGLE
	db GASTLY
	db HAUNTER
	db GENGAR
	db RALTS
	db KIRLIA
	db GARDEVOIR
	db GALLADE
	db SPIRITOMB
	db INKAY
	db MALAMAR
	db YANMA
	db YANMEGA
	db SANDYGAST
	db PALOSSAND
	db MEOWTH
	db PERSIAN
	db FENNEKIN
	db BRAIXEN
	db DELPHOX
	db CHINGLING
	db CHIMECHO
	db -1
	
GrassWhistleUsers:
	db ROSELIA
	db ROSERADE
	db PETILIL
	db LILLIGANT
	db LILLIGANT_HISUI
	db TREECKO
	db GROVYLE
	db SCEPTILE
	db SUNKERN
	db SUNFLORA
	db -1
	
TackleNames:
	db "POUND@"
	db "SCRATCH@"
	db "TACKLE@"
	db -1
	
DefenseCurlNames:
	db "WITHDRAW@"
	db "HARDEN@"
	db "DEFENSE CURL@"
	db -1
	
LeerNames:
	db "TAIL WHIP@"
	db "LEER@"
	db -1
	
BarrierNames:
	db "IRON DEFENSE@"
	db "ACID ARMOR@"
	db "BARRIER@"
	db -1
	
LockOnNames:
	db "MIND READER@"
	db "LOCK ON@"
	db -1
	
SharpenNames:
	db "MEDITATE@"
	db "HOWL@"
	db "SHARPEN@"
	db -1
	
FurySwipesNames:
	db "FURY ATTACK@"
	db "COMET PUNCH@"
	db "DOUBLESLAP@"
	db "BARRAGE@"
	db "SPIKE CANNON@"
	db "FURY SWIPES@"
	db -1
	
SynthesisNames:
	db "MOONLIGHT@"
	db "MORNING SUN@"
	db "SYNTHESIS@"
	db -1
	
MeanLookNames:
	db "BLOCK@"
	db "SPIDER WEB@"
	db "MEAN LOOK@"
	db -1
	
CharmNames:
	db "FEATHERDANCE@"
	db "CHARM@"
	db -1
	
ScaryFaceNames:
	db "COTTON SPORE@"
	db "STRING SHOT@"
	db "SCARY FACE@"
	db -1
	
RoarNames:
	db "WHIRLWIND@"
	db "ROAR@"
	db -1
	
HealBellNames:
	db "AROMATHERAPY@"
	db "HEAL BELL@"
	db -1
	
SandAttackNames:
	db "SMOKESCREEN@"
	db "SAND ATTACK@"
	db -1
	
SoftboiledNames:
	db "SOFTBOILED@"
	db "RECOVER@"
	db -1
	
AgilityNames:
	db "ROCK POLISH@"
	db "AGILITY@"
	db -1

SingNames:
	db "HYPNOSIS@"
	db "GRASSWHISTLE@"
	db "SING@"
	db -1
	
MultiSlotMoves:
	db TACKLE
	db HARDEN
	db DISARM
	db IRON_DEFENSE
	db LOCK_ON
	db HOWL
	db FURY_STRIKES
	db HEALING_LIGHT
	db BLOCK
	db CHARM
	db SLOW_DOWN
	db SEND_AWAY
	db SMOKESCREEN
	db RECOVER
	db AGILITY
	db HYPNOTIZE
	db HEAL_BELL
	db -1
	
MultiSlotMoveTypesNoWeatherBall::
	push hl
	push bc
	push de
	push af
	ld a, [wCurMove]
	jr MultiSlotMoveTypes.cont
	
MultiSlotMoveTypes::
	push hl
	push bc
	push de
	push af
	ld a, [wCurMove]
.cont
	cp DEFENSE_CURL_HARDEN_WITHDRAW
	jr z, .defense_curl
	cp BARRIER_IRON_DEFENSE_ACID_ARMOR
	jr z, .barrier
	cp SHARPEN_HOWL_MEDITATE
	jr z, .sharpen
	cp SYNTHESIS_MOONLIGHT_MORNING_SUN
	jr z, .synthesis
	cp MEAN_LOOK_BLOCK_SPIDER_WEB
	jp z, .mean_look
	cp SAND_ATTACK_SMOKESCREEN
	jp z, .sand_attack
	cp SCARY_FACE_COTTON_SPORE_STRING_SHOT
	jp z, .scary_face
	cp CHARM_FEATHER_DANCE
	jp z, .charm
	cp AGILITY_ROCK_POLISH
	jp z, .agility
	cp SING_HYPNOSIS
	jp z, .sing
	cp HEAL_BELL_AROMA
	jp z, .healbell
	pop af
	jp MultiSlotMoveTypesFinish
.defense_curl
	pop af
	call CheckWithdrawUsers
	jr nc, .not_withdraw
	ld a, WATER
	jp MultiSlotMoveTypesFinish
.not_withdraw
	ld a, NORMAL
	jp MultiSlotMoveTypesFinish
	
.barrier
	pop af
	call CheckIronDefenseUsers
	jr nc, .not_iron_defense
	ld a, STEEL
	jp MultiSlotMoveTypesFinish
.not_iron_defense
	call CheckAcidArmorUsers
	jr nc, .not_acid_armor
	ld a, POISON
	jp MultiSlotMoveTypesFinish
.not_acid_armor
	ld a, PSYCHIC
	jp MultiSlotMoveTypesFinish
	
.sharpen
	pop af
	call CheckMeditateUsers
	jr nc, .not_meditate
	ld a, PSYCHIC
	jp MultiSlotMoveTypesFinish
.not_meditate
	ld a, NORMAL
	jp MultiSlotMoveTypesFinish
	
.synthesis
	pop af
	call CheckMoonlightUsers
	jr nc, .not_moonlight
	ld a, FAIRY
	jp MultiSlotMoveTypesFinish
.not_moonlight
	call CheckMorningSunUsers
	jr nc, .not_morning_sun
	ld a, NORMAL
	jp MultiSlotMoveTypesFinish
.not_morning_sun
	ld a, GRASS
	jp MultiSlotMoveTypesFinish
	
.mean_look
	pop af
	call CheckSpiderWebUsers
	jr nc, .not_spider_web
	ld a, BUG
	jp MultiSlotMoveTypesFinish
.not_spider_web
	ld a, NORMAL
	jp MultiSlotMoveTypesFinish
	
.sand_attack
	pop af
	call CheckFlashUsers
	jr nc, .not_smokescreen
	ld a, NORMAL
	jp MultiSlotMoveTypesFinish
.not_smokescreen
	ld a, GROUND
	jp MultiSlotMoveTypesFinish
	
.scary_face
	pop af
	call CheckCottonSporeUsers
	jr nc, .not_cotton_spore
	ld a, GRASS
	jp MultiSlotMoveTypesFinish
.not_cotton_spore
	call CheckStringShotUsers
	jr nc, .not_string_shot
	ld a, BUG
.not_string_shot
	ld a, NORMAL
	jp MultiSlotMoveTypesFinish
	
.charm
	pop af
	call CheckFeatherDanceUsers
	jr nc, .not_feather_dance
	ld a, FLYING
	jp MultiSlotMoveTypesFinish
.not_feather_dance
	ld a, FAIRY
	jp MultiSlotMoveTypesFinish
	
.agility
	pop af
	call CheckRockPolishUsers
	jr nc, .not_rock_polish
	ld a, ROCK
	jp MultiSlotMoveTypesFinish
.not_rock_polish
	ld a, PSYCHIC
	jp MultiSlotMoveTypesFinish
	
.sing
	pop af
	call CheckHypnosisUsers
	jr nc, .not_hypnosis
	ld a, PSYCHIC
	jp MultiSlotMoveTypesFinish
.not_hypnosis
	call CheckGrassWhistleUsers
	jr nc, .not_grasswhistle
	ld a, GRASS
	jp MultiSlotMoveTypesFinish
.not_grasswhistle
	ld a, NORMAL
	jp MultiSlotMoveTypesFinish
	
.healbell
	pop af
	call CheckAromatherapyUsers
	jr nc, .not_aromatherapy
	ld a, GRASS
	jp MultiSlotMoveTypesFinish
.not_aromatherapy
	ld a, NORMAL
	jp MultiSlotMoveTypesFinish

MultiSlotMoveTypesFinish:
	pop de
	pop bc
	pop hl
	ret