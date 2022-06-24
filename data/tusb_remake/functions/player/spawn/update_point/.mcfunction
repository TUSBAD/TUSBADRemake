#> tusb_remake:player/spawn/update_point/
# 寝た時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s "リスポーン地点が前の地点に戻されました"

tag @s add SpawnPointRollback

### エンティティを召喚
execute in minecraft:overworld positioned -1909.0 113.0 -136.0 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Tags:[SpawnPointModifier]}
execute in minecraft:overworld positioned -1909.0 113.0 -136.0 as @e[distance=..0.0001,tag=SpawnPointModifier] at @s run function tusb_remake:player/spawn/update_point/rollback

tag @s remove SpawnPointRollback

execute store result score @s SpawnX run data get entity @s SpawnX
execute store result score @s SpawnY run data get entity @s SpawnY
execute store result score @s SpawnZ run data get entity @s SpawnZ
