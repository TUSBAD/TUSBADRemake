#> tusb_remake:main_clock
# メインクロック？
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 初回ログイン時
execute as @a[team=] at @s run function tusb_remake:login/first
### ログイン時
execute as @a[scores={LeaveGame=1..}] at @s run function tusb_remake:login/

### 紙を拾ったプレイヤーがいたらトレードイベント(職業変更/釣りチケット)判定を呼び出す
execute as @a[scores={PickupPaper=1..}] run scoreboard players operation @s TradedVillager >< @s PickupPaper
execute as @a[scores={TradedVillager=1..}] run function tusb_remake:trade_event/

### リスポーン満腹度維持処理
execute as @a[scores={HP=..0,Hunger=..-1}] at @s run function tusb_remake:player/death/
### 生き返ったときは満腹度調整処理
execute as @a[scores={HP=1..,Hunger=0..}] run function tusb_remake:player/apply_hunger

### 経験値取得処理
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star"}]}] at @s run function tusb_remake:player/pick_exp/

### レベルアップ処理
execute as @a[scores={ExpToLevel=..0}] at @s run function tusb_remake:player/level_up

### MP自然回復
execute as @a[scores={CoolTickCounter=1..}] unless score @s MP >= @s MPMax run function tusb_remake:player/mp/natural

###島攻略
execute as @a[scores={UseEnderEye=1..}] at @s run function tusb_remake:area/conquer/

### コーラスフルーツ
# scoreboard players tag @a[score_UseChorus_min=1] add Pray
# tp @a[-2827,57,-410,dx=9,dy=123,dz=9,score_UseChorus_min=1] -2811 75 -396 -53 0
# execute @a[score_UseChorus_min=1] ~ ~ ~ /summon Endermite ~ ~ ~ {CustomName:"コーラスマイト",Health:200f,Lifetime:1900,Attributes:[{Name:"generic.maxHealth",Base:200d},{Name:"generic.movementSpeed",Base:0.3d},{Name:"generic.attackDamage",Base:1d},{Name:"generic.knockbackResistance",Base:0.3d},{Name:"generic.followRange",Base:32d}],HandItems:[{tag:{ench:[{id:19s,lvl:20s}]},id:"minecraft:iron_sword",Count:0b,Damage:0s},{}]}
# scoreboard players reset @a[score_UseChorus_min=1] UseChorus

### 緩衝体力付きで死んでいる場合、エフェクトクリアすることで、体力を正常にする
effect clear @a[scores={Deaths=1..,HP=1..}]

### ベッドで寝たときの効果
execute as @a[scores={SleepInBed=1..}] at @s run function tusb_remake:player/sleep/

### お祈り処理(kill)
execute as @a[scores={kill=1..}] at @s run function tusb_remake:player/pray/

### 交易島落下防止＆製作者村人の追加
execute positioned -58 23 22 in minecraft:overworld run tp @e[distance=25..,type=villager,tag=ShopStaff] -54.5 24.5 9.0

###村人会話
execute as @a[scores={AgentFlag=1..}] at @s run function tusb_remake:talk_event/agent/trigger/
execute as @a[scores={PastorFlag=1..}] at @s run function tusb_remake:talk_event/pastor/trigger/
execute as @a[scores={AugurFlag=1..}] at @s run function tusb_remake:talk_event/augur/trigger/

# ###観光モード提案
# /execute @a[tag=SuggestSightseeing,c=1] ~ ~ ~ /execute 0-0-1-0-1 ~ 8 -188 /clone ~ ~ ~ ~ ~ ~ ~ ~ ~ filtered force minecraft:command_block 5 

# ### テーブルマウンテンの不思議な力
# /tellraw @a[-6,65,-2148,dx=64,dy=135,dz=48,m=adventure] {"text":"不思議な力で押し戻された。","color":"dark_purple"}
# /tp @a[-6,65,-2148,dx=64,dy=135,dz=48,m=adventure] ~ 37 ~

# ###ネザー火山噴火
# /execute @a[score_MineNetherrack_min=1,c=1] ~ ~ ~ /execute 0-0-1-0-1 ~ 13 -188 /clone ~ ~ ~ ~ ~ ~ ~ ~ ~ filtered force minecraft:command_block 5 ###ネザー火山噴火

# ### サボテン島の罠 もとい サトウキビ島
# /execute @a[39,7,67,10,c=1] ~ ~ ~ detect 39 6 67 minecraft:air 0 /execute @a[c=1] ~ ~ ~ detect 39 7 67 minecraft:monster_egg -1 /setblock 39 7 67 minecraft:mob_spawner 0 destroy {SpawnCount:1s,SpawnRange:5s,MaxNearbyEntities:16s,Delay:1s,MaxSpawnDelay:10s,MinSpawnDelay:10s,RequiredPlayerRange:32s,SpawnData:{id:Silverfish,CustomName:お知らせ,CustomNameVisible:true,ArmorItems:[{},{},{},{id:minecraft:wool,Count:1b}],ArmorDropChances:[0f,0f,0f,2f]}}
# /scoreboard players test Debug Settings * 0
# /summon Bat 8 26 4 {NoAI:true,Passengers:[{id:PrimedTnt,Fuse:5s},{id:MinecartSpawner,PortalCooldown:1,Tags:[CooldownRequired,TypeChecked],Delay:0s,MaxSpawnDelay:32000s,MinSpawnDelay:32000s,SpawnCount:200s,SpawnRange:64s,MaxNearbyEntities:300s,RequiredPlayerRange:120s,SpawnData:{id:FallingSand,Block:minecraft:fire,Data:0b,Time:1b,DropItem:false},SpawnPotentials:[{Weight:1}]}]}
# /execute @a[39,7,67,10,c=1] ~ ~ ~ detect 39 6 67 minecraft:chest -1 /setblock 39 7 67 minecraft:monster_egg 0 keep

# タイプ設定 新しくでてきた敵に色々設定するやつ
execute as @e[type=!#tusb_remake:ignore_type_check,type=!area_effect_cloud,tag=!TypeChecked] at @s run function tusb_remake:entity/type_check
## TODO
execute as @e[type=area_effect_cloud,tag=!TypeChecked] at @s run function tusb_remake:entity/type_check

# 透明化＆エーテル Invisible
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run function tusb_remake:player/invisible/

# 奈落防止
execute as @e[tag=AbyssWarp] at @s positioned ~-0.5 -70 ~-0.5 run tp @s[dy=-29] @p
# execute @a ~ -30 ~ /tp @a[dy=32] ~ ~ ~
# execute as @a at @s positioned ~ -30 ~ run tp @s[dy=32] ~ ~ ~

# NoAIの停止 Freeze おのれもやん => NoAIでも動くやつがいるみたいなのだったかも
execute as @e[tag=Freeze] run data merge entity @s {Motion:[0d,0d,0d]}
