#> tusb_remake:player/spawn/check_sleep
# 寝た時の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: spawn_point set value [I;0,0,0]
execute store result storage tusb_remake: spawn_point[0] int 1 run scoreboard players get @s SpawnX
execute store result storage tusb_remake: spawn_point[1] int 1 run scoreboard players get @s SpawnY
execute store result storage tusb_remake: spawn_point[2] int 1 run scoreboard players get @s SpawnZ

data modify storage tusb_remake: _ set value [I;0,0,0]
data modify storage tusb_remake: _[0] set from entity @s SpawnX
data modify storage tusb_remake: _[1] set from entity @s SpawnY
data modify storage tusb_remake: _[2] set from entity @s SpawnZ

execute store result storage tusb_remake: _ byte 1 run data modify storage tusb_remake: _ set from storage tusb_remake: spawn_point

execute if data storage tusb_remake: {_:true} if predicate tusb_remake:can_sleep run function tusb_remake:player/spawn/set
execute if data storage tusb_remake: {_:true} unless predicate tusb_remake:can_sleep run function tusb_remake:player/spawn/update_point/

# effect @a[m=adventure,score_SleepInBed_min=1] minecraft:instant_damage 1 0 true
# tellraw @a[m=adventure,score_SleepInBed_min=1] {"text":"痛っ！ここで寝るのは危ないようだ。","color":"yellow"}

# effect @a[m=survival,score_SleepInBed_min=1] minecraft:instant_health 1 6 true
# tellraw @a[m=survival,score_SleepInBed_min=1] {"text":"( ˘ω˘ ) ｽﾔｧ…疲れが取れていく…","color":"aqua"}

# advancement revoke @s only tusb_remake:player/sleep
