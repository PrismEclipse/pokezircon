DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod, master rod
	db \1
	dw \2, \3, \4, \5
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super,  	.Shore_Master
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super, 		.Ocean_Master
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super, 		.Lake_Master
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super, 		.Pond_Master
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super, 	.Dratini_Master
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super,  .Qwilfish_Swarm_Master
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super,  .Remoraid_Swarm_Master
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super, 		.Gyarados_Master
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super, 		.Dratini_2_Master
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super, 	.WhirlIslands_Master
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super, 		.Qwilfish_Master
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super, 		.Remoraid_Master
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super, 	.Qwilfish_NoSwarm_Master
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     CLAUNCHER,     10
.Shore_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     CLAUNCHER,     20
	db  90 percent + 1, CLAUNCHER,     20
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     CLAUNCHER,     40
	db  70 percent,     time_group 1
	db  90 percent + 1, CLAUNCHER,     40
	db 100 percent,     CLAWITZER,    40

.Ocean_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     SKRELP,  10
.Ocean_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     SKRELP,  20
	db  90 percent + 1, CLAUNCHER,   20
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     CLAUNCHER,   40
	db  70 percent,     time_group 3
	db  90 percent + 1, MAGIKARP, 40
	db 100 percent,     CLAWITZER,    40

.Lake_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     ANCHORAGE,    10
.Lake_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     ANCHORAGE,    20
	db  90 percent + 1, ANCHORAGE,    20
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     ANCHORAGE,    40
	db  70 percent,     time_group 5
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     GYARADOS,    40

.Pond_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,    10
.Pond_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,    20
	db  90 percent + 1, MAGIKARP,    20
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     MAGIKARP,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     MAGIKARP,    40

.Dratini_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Dratini_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,   20
	db  90 percent + 1, MAGIKARP,   20
	db 100 percent,     time_group 8
.Dratini_Super:
	db  40 percent,     MAGIKARP,   40
	db  70 percent,     time_group 9
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     GABITE,  40

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     QWILFISH,   20
	db  90 percent + 1, QWILFISH,   20
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   40
	db  70 percent,     time_group 11
	db  90 percent + 1, QWILFISH,   40
	db 100 percent,     QWILFISH,   40

.Remoraid_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, REMORAID,   20
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   40
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORAID,   40
	db 100 percent,     REMORAID,   40

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,   20
	db  90 percent + 1, MAGIKARP,   20
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     MAGIKARP,   40
	db  70 percent,     time_group 15
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     MAGIKARP,   40

.Dratini_2_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,   10
.Dratini_2_Good:
	db  35 percent,     MAGIKARP,   10
	db  70 percent,     MAGIKARP,   10
	db  90 percent + 1, MAGIKARP,   10
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     MAGIKARP,   10
	db  70 percent,     time_group 17
	db  90 percent + 1, MAGIKARP,   10
	db 100 percent,     GABITE,  10

.WhirlIslands_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     CLAUNCHER,     10
.WhirlIslands_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     CLAUNCHER,     20
	db  90 percent + 1, CLAUNCHER,     20
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     CLAUNCHER,     40
	db  70 percent,     time_group 19
	db  90 percent + 1, CLAWITZER,    40
	db 100 percent,     ANCHORAGE,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     SKRELP,  10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     SKRELP,  20
	db  90 percent + 1, SKRELP,  20
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     SKRELP,  40
	db  70 percent,     time_group 21
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     QWILFISH,   40

.Remoraid_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     MAGIKARP,    10
.Remoraid_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     MAGIKARP,    20
	db  90 percent + 1, MAGIKARP,    20
	db 100 percent,     time_group 6
.Remoraid_Super:
	db  40 percent,     MAGIKARP,    40
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     REMORAID,   40

.Shore_Master:
.Ocean_Master:
.Lake_Master:
.Pond_Master:
.WhirlIslands_Master:
	db  20 percent,     CARRACOSTA,    60
	db  40 percent,     EMPOLEON,   60
	db  70 percent,     OCTILLERY,  60
	db  90 percent + 1, RELICANTH,     60
	db 100 percent,     SWAMPERT,    60

.Gyarados_Master:
	db  40 percent,     MAGIKARP,   60
	db  70 percent,     GYARADOS,   60
	db  90 percent + 1, GYARADOS,   60
	db 100 percent,     GYARADOS,   60

.Dratini_Master:
.Dratini_2_Master:
	db  40 percent,     GYARADOS,   60
	db  70 percent,     ANCHORAGE,    60
	db  90 percent + 1, GROTESS,  60
	db 100 percent,     GROTESS,  60

.Qwilfish_Master:
.Qwilfish_Swarm_Master:
.Qwilfish_NoSwarm_Master:
	db  40 percent,     DRAGALGE, 60
	db  70 percent,     QWILFISH,   60
	db  90 percent + 1, QWILFISH,   60
	db 100 percent,     QWILFISH,   60

.Remoraid_Master:
.Remoraid_Swarm_Master:
	db  40 percent,     DRAGALGE, 60
	db  70 percent,     REMORAID,   60
	db  90 percent + 1, REMORAID,   60
	db 100 percent,     OCTILLERY,  60

TimeFishGroups:
	;  day              nite
	db STARYU,    20,  STARYU,     20 ; 0
	db STARYU,    40,  STARYU,     40 ; 1
	db SHELLDER,   20,  SHELLDER,   20 ; 2
	db SHELLDER,   40,  SHELLDER,   40 ; 3
	db ANCHORAGE,    20,  ANCHORAGE,    20 ; 4
	db ANCHORAGE,    40,  ANCHORAGE,    40 ; 5
	db MAGIKARP,    20,  MAGIKARP,    20 ; 6
	db MAGIKARP,    40,  MAGIKARP,    40 ; 7
	db GIBLE,    20,  GIBLE,    20 ; 8
	db GIBLE,    40,  GIBLE,    40 ; 9
	db QWILFISH,   20,  QWILFISH,   20 ; 10
	db QWILFISH,   40,  QWILFISH,   40 ; 11
	db REMORAID,   20,  REMORAID,   20 ; 12
	db REMORAID,   40,  REMORAID,   40 ; 13
	db GYARADOS,   20,  GYARADOS,   20 ; 14
	db GYARADOS,   40,  GYARADOS,   40 ; 15
	db GIBLE,    10,  GIBLE,    10 ; 16
	db GIBLE,    10,  GIBLE,    10 ; 17
	db CORASUN,     20,  CORASUN,     20 ; 18
	db CORASUN,     40,  CORASUN,     40 ; 19
	db SKRELP,  20,  SKRELP,  20 ; 20
	db SKRELP,  40,  SKRELP,  40 ; 21

FishGroups_Names::
	table_width 2, FishGroups_Names
	dw Group1_Name
	dw Group2_Name
	dw Group3_Name
	dw Group4_Name
	dw Group5_Name
	dw Group6_Name
	dw Group7_Name
	dw Group8_Name
	dw Group9_Name
	dw Group10_Name
	dw Group11_Name
	dw Group12_Name
	dw Group13_Name
	assert_table_length NUM_FISHGROUPS ; (13, NONE is not included in the count)

Group1_Name:
	db " SHORE@"
Group2_Name:
	db " OCEAN@"
Group3_Name:
	db " LAKE@"
Group4_Name:
	db " POND@"
Group5_Name:
	db " GIBLE@"
Group6_Name:
	db " SWARM 1@"
Group7_Name:
	db " SWARM 2@"
Group8_Name:
	db " GYARADOS@"
Group9_Name:
	db " ROUTE 45@"
	; db " GIBLE 2@"
Group10_Name:
	db " WHIRL@"
Group11_Name:
	db " QWILFISH@"
Group12_Name:
	db " REMORAID@"
Group13_Name:
	db " ROUTE 12@"
	; db " QWILFISH 2@"

GetFishGroupName:
; given fishing group num in 'a'
; return str ptr in 'de'
	dec a
	add a ; doubles the index since ptrs are 2 bytes
	ld hl, FishGroups_Names
	ld d, 0
	ld e, a
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ret

GetMapsFishGroup::
	dec d ; map num
	dec e ; map group
	push de
	ld d, 0
	; 'e' is the map group
	ld hl, MapGroupPointers
	add hl, de ; since ptrs are 2 bytes, double the index
	add hl, de
	ld a, BANK(MapGroupPointers)
	call GetFarWord
	pop de
	ld a, d ; map num becomes the index, do the same as map group
	ld bc, MAP_LENGTH
	; hl is pointing to map group ptr
	call AddNTimes ;  Add bc * a to hl.
	; fish group is the very last byte in the entry
	ld bc, MAP_LENGTH - 1
	add hl, bc
	ld a, BANK(MapGroupPointers)
	call GetFarByte
	; ld a, [hl] ; fishing group
	cp FISHGROUP_NONE
	jr z, .fishgroup_none
	call GetFishGroupName
	; ptr to fishgroup name is in de
	ret
.fishgroup_none
	xor a
	ld d, a
	ld e, a
	ret

; GetNextMapName_FishGroup:
; given: Fish group
; given: page number + num already printed
; calculate the map number of next map entry with that fishing group
; get map name based on map index
; return: map name ptr in 'de'