#> player:tick/trigger/first_join/
#
# プレイヤー初回ログイン処理
#
#
# プレイヤーにoh_my_datのストレージを提供しつつ、初期設定を行う

# ステータスの初期化（無職から始まるTUSB）
    scoreboard players set @s Level 1
    scoreboard players set @s Job 0
    scoreboard players set @s AllExp 0
    scoreboard players set @s HP 20
    scoreboard players set @s HPMax 20
    scoreboard players set @s MP 100
    scoreboard players set @s MPCount 0
    scoreboard players set @s MPMax 100
    scoreboard players set @s ElementPyro 1000
    scoreboard players set @s ElementHydro 1000
    scoreboard players set @s ElementCryo 1000
    scoreboard players set @s ElementElectro 1000
    scoreboard players set @s ElementAnemo 1000
    scoreboard players set @s ElementDendro 1000
    scoreboard players set @s ElementLumo 1000
    scoreboard players set @s ElementUmbro 1000
    scoreboard players set @s SP 3
    scoreboard players set @s ATK 1
    scoreboard players set @s MATK 1
    scoreboard players set @s DEF 1
    scoreboard players set @s MDEF 1
    scoreboard players set @s LUCK 1
    scoreboard players set @s MPRegen 50

# Modiferの初期化
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers set value {}

# スキル情報初期化
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ModeSkills set value [[{},{}],[{},{}]]
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SupportSkills set value [[{},{}],[{},{}]]
    function player:tick/trigger/first_join/set_skill_storage
