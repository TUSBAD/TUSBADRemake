#> tusb_remake:one_sec
# １秒毎に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# マナリフレッシュ
execute as @a[scores={ManaRefresh=0..}] run function tusb_remake:skill/black_mage/mana_refresh/check

# 連舞 跳躍
execute as @a[scores={Tsuremai=0..}] at @s run function tusb_remake:skill/ninja/tsuremai/check
execute as @a[scores={Choyaku=0..}] at @s run function tusb_remake:skill/ninja/choyaku/check

# scoreboard players set @a[score_NinjaTime=-1] Choyaku 0
# scoreboard players reset @a[score_NinjaTime=-1] NinjaTime

# マジックシールド継続
# effect @a[tag=MagicShield] minecraft:resistance 15 4 true

# 黙想継続
execute as @a[tag=Mokuso] at @s run function tusb_remake:skill/ninja/mokuso/check

# 風切
execute as @a[scores={Kazakiri=0..}] at @s run function tusb_remake:skill/ninja/kazakiri/check

# レーダーヴィジョン
execute as @a[tag=RadarVision] at @s run function tusb_remake:skill/archer/radar_vision/check

# レーダーヴィジョン
# scoreboard players remove @a[score_RadarVision_min=0] RadarVision 1
# scoreboard players tag @a[score_RadarVision=-1] add RadarEnd
# tp @a[score_RadarVision=-1] ~ ~15 ~
# scoreboard players reset @a[score_RadarVision=-1] RadarVision
##レーダーヴィジョン終了処理予約
# execute 0-0-1-0-1 ~ 12 -166 /clone ~ ~ ~ ~ ~ ~ ~ ~ ~ filtered force minecraft:command_block 5 

# 1分処理
scoreboard players add #SecCount Global 1
## 0になるのは嫌な予感の演出が終わる時だけなので、赤い視界をリセットする
execute if score #SecCount Global matches 0..2 run worldborder warning distance 0
## 1分処理を呼び出す
execute if score #SecCount Global matches 61.. run function tusb_remake:one_min

### 動き停止飛翔物判定
execute as @e[tag=FlyingObject,nbt=!{inGround:true,OnGround:true}] at @s run function tusb_remake:entity/check_projectile
execute as @e[tag=InKasap] at @s run function tusb_remake:entity/check_kasap

### くもの巣を設置してくる害悪
execute as @e[tag=CanSpin] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:cobweb keep

### Freeze/Melt 居縮とかの
execute as @e[tag=Freeze,nbt={PortalCooldown:0}] run function tusb_remake:one_sec3

## 敵のスキルをつかうとこ
## 0 - 19まで設定できる？
## 111 <= 100tick=5秒経過 次に使うスキルは11番
scoreboard players add @e[tag=SkillMob] MobCastTime 20
execute as @e[tag=SkillMob,sort=random,limit=1] at @s[scores={MobCastTime=400..}] run say function 敵スキル実行呼び出し

# scoreboard players operation @s[score_MobCastTime_min=400,c=1] MobCastTime %= #20 Const
###敵スキル実行
# clone -1920 ~3 ~3 -1920 ~3 ~3 -1920 ~3 ~3 filtered force minecraft:command_block 5

# /scoreboard players operation #Random Global = @a[c=1] RndMWC
# /scoreboard players tag @a[c=1] add UpdateRandom
# /scoreboard players operation #Random Global %= #100 Const
# ## 0-19 はスキルが発動している
# /execute @e[tag=SkillMob] ~ ~ ~ /scoreboard players set @e[dx=0,tag=SkillMob,score_MobCastTime=19,c=1] MobCastTime 1
# /execute @e[tag=FastCast] ~ ~ ~ /scoreboard players set @e[dx=0,tag=FastCast,score_MobCastTime=19,c=1] MobCastTime 3
# /execute @e[tag=SkillMob] ~ ~ ~ /scoreboard players operation @e[dx=0,tag=SkillMob,score_MobCastTime=19,c=1] MobCastTime *= #Random Global
# ## 1-99 or 3-297

## 嫌な予感を実行する
execute as @a[predicate=tusb_remake:area/skyland,tag=CauseEvent] at @s if score #SecCount Global matches 0.. run function tusb_remake:event/summon

## トカルトの処理
execute as @a[predicate=tusb_remake:area/tocult_colde,gamemode=!spectator] at @s run function tusb_remake:tocult_process/

# ## 動物誘導
# execute 0-0-1-0-3 ~ ~ ~ /scoreboard players operation @e[r=5,tag=VillagerMeal] Freshness *= #-1 Const
# ###動物誘導イベント
# clone -1920 ~2 ~3 -1920 ~2 ~3 -1920 ~2 ~3 filtered force minecraft:command_block 5

## オーラ(AEC)纏ってる敵のオーラを維持する？
execute as @e[tag=MobCloud] at @s as @e[dx=0,tag=Enemy,sort=nearest,limit=1] at @s as @e[dy=10,tag=MobCloud] run data modify entity @s Age set value 5

# ## 煉獄ボス戦闘中
# execute 0-0-1-0-4 ~ ~-19 ~74 detect -1860 20 -51 minecraft:slime 0 /testfor @p[r=65]
# ###ネザーボス戦闘中処理
# clone -1920 ~-1 ~5 -1920 ~-1 ~5 -1920 ~-1 ~5 filtered force minecraft:command_block 5

## 死の宣告
execute as @a[tag=Doom] run function tusb_remake:doom/

## サバイバルスポナー処理
execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air positioned ~-0.1 ~-0.1 ~-0.1 run kill @e[dx=0,tag=Spawner]

## CooldownRequired 誤差許容長期用
tag @e[tag=CooldownRequiredLong,nbt={PortalCooldown:0}] add Garbage 

## カートスポナーポータルin対策
tag @e[type=spawner_minecart,tag=CooldownRequired,nbt={PortalCooldown:300}] add Garbage

## 祈り(最後の手段) ## 最初に教会に行くまで使えない
# execute if score Prayable Settings matches 1.. run function 
# scoreboard players test Prayable Settings 1 *
# scoreboard players enable @a[tag=Pray,score_Job_min=1] kill
# tellraw @a[tag=Pray,score_Job_min=1] [{"text":"[最終手段] ","bold":true,"color":"gray"},{"text":"祈りを捧げる","color":"dark_aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger kill set 1"},"hoverEvent":{"action":"show_text","value":{"text":"/kill","color":"red"}}}]
# scoreboard players tag @a[tag=Pray,score_Job_min=1] remove Pray

# ## 回路区画に入るんじゃあないぜ！
# tp @a[-1923,3,-202,dx=53,dy=16,dz=133,m=adventure] -1896.0 25 -136.0

## 炎出す奴
execute as @e[tag=CanFire] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:fire keep

## エリア境界不正侵入(バリアめり込み)防止
execute as @a[gamemode=!spectator] at @s if block ~ 0 ~ minecraft:barrier if blocks ~ 0 ~ ~ 254 ~ ~ ~1 ~ all run kill @s

execute in minecraft:overworld run schedule function tusb_remake:one_sec 1s
