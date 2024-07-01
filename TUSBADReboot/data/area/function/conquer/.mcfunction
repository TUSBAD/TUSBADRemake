#> area:conquer/
# 島攻略時の処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

execute if predicate area:area/nether run function area:conquer/nether
execute if predicate area:area/nether_dungeon run function area:conquer/nether_dungeon
execute if predicate area:area/end run function area:conquer/end
execute if predicate area:area/skyland run function area:conquer/skyland
execute if predicate area:area/underworld run function area:conquer/underworld
execute if predicate area:area/cloudia run function area:conquer/cloudia
execute if predicate area:area/table_mountain run function area:conquer/table_mountain
execute if predicate area:area/gullivers_land run function area:conquer/gullivers_land
execute if predicate area:area/tocult_colde run function area:conquer/tocult_colde
execute if predicate area:area/tradeisland run function area:conquer/traders_island
execute if predicate area:area/revskyland run function area:conquer/revskyland
execute if predicate area:area/library run function area:conquer/library
execute if predicate area:area/imaginary run function area:conquer/imaginary
execute if predicate area:area/niflheimr run function area:conquer/niflheimr
execute if predicate area:area/unusual run function area:conquer/unusual_space
execute if predicate area:area/airport run function area:conquer/airport
execute if predicate area:area/another_dimension run function area:conquer/another_dimension
execute if predicate area:area/ancient_field run function area:conquer/ancient_field

## 00.0%
function area:conquer/total

execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 0.3 2 0.3
execute as @a at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 30 normal
execute as @a at @s run particle minecraft:instant_effect ~ ~1 ~ 1 1 1 0.1 90 normal
execute as @a at @s run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Flicker:true,Trail:true,Colors:[I;16774552],FadeColors:[I;16777215]},{Type:0b,Flicker:false,Trail:false,Colors:[I;65407,16777215,16777215],FadeColors:[I;16777215]}]}}},Tags:[ConquerFirework]}
execute as @e[type=firework_rocket,tag=ConquerFirework] at @s run tp @s 0.0 0.0 0.0

title @a times 5 150 20
title @a subtitle {"translate":"攻略率 : %1$s/%2$s (%3$s.%4$s%%)","italic":true,"color":"white","with":[{"nbt":"conquer.count.total","storage":"tusb_remake:","bold":true,"italic":false},{"score":{"name":"MaxPortalCount","objective":"Settings"}},{"nbt":"conquer.rate.int[]","storage":"tusb_remake:","separator":""},{"nbt":"conquer.rate.cent[]","storage":"tusb_remake:","separator":""}]}
title @a title {"text":"島を攻略した！","color":"gold","bold":true}
effect give @a minecraft:instant_health 1 6 true
effect give @a minecraft:saturation 1 19 true

execute store result score 経過時間 Settings run time query gametime
execute store result score _ Settings run data get storage tusb_remake: start_time
execute store result storage math: in int 1 run scoreboard players operation 経過時間 Settings -= _ Settings
## 経過時間を表示用に分割
function #math:clock

data modify storage tusb_remake: _ set value ""
execute if score SightseeingDeath Settings matches 1.. run data modify storage tusb_remake: _ set value '[{"text":"(観光中の死:","color":"gray","italic":false},{"score":{"name":"SightseeingDeath","objective":"Settings"},"color":"red"},")"]'
tellraw @a [{"translate":"攻略タイム : %1$s","italic":true,"bold":true,"color":"white","with":[{"translate":"%1$s時間%2$s分%3$s秒","italic":false,"with":[{"nbt":"out.total_hour","storage":"math:"},{"nbt":"out.minute","storage":"math:"},{"nbt":"out.second","storage":"math:"}]}]},{"nbt":"_","storage":"tusb_remake:","interpret":true}]

scoreboard players reset @s UseEnderEye

### 夜をつかさどる島だった場合、夜固定を解除
#execute in minecraft:overworld if block 3 77 87 minecraft:end_portal_frame[eye=true] run function area:conquer/luna
### 交易島だった場合、祈りを解禁
#execute in minecraft:overworld if block -70 15 32 minecraft:end_portal_frame[eye=true] run function area:conquer/traders_island

### 攻略%を取得
execute store result score #ConqCheck Global run data get storage tusb_remake: conquer.rate.int