#> tusb_remake:gimmic/simmic/trigger
# シミック
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

## シミック修正
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"function tusb_remake:gimmic/simmic/summon",auto:true} replace minecraft:chain_command_block{Command:"シミック"}

## 盗賊の鍵の修正
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:chain_command_block{Command:"盗賊の鍵"} replace minecraft:command_block{Command:"/setblock ~ ~-1 ~ minecraft:redstone_block",auto:false,powered:true}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"/setblock ~ ~-1 ~ minecraft:redstone_block",auto:true} replace minecraft:chain_command_block{Command:"盗賊の鍵"}

fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:chain_command_block{Command:"盗賊の鍵↓"} replace minecraft:command_block{Command:"/clone ~ ~-1 ~ ~ ~-1 ~ ~ ~4 ~ ",auto:false}
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:command_block{Command:"/clone ~ ~-1 ~ ~ ~-1 ~ ~ ~4 ~ replace",auto:true} replace minecraft:chain_command_block{Command:"盗賊の鍵↓"}

### トカルトコルデの黒いバリア解除の修正
execute in minecraft:overworld run data merge block 1388 82 2273 {Command:"/fill 1380 106 2311 1375 104 2309 minecraft:air replace minecraft:black_stained_glass"}
execute in minecraft:overworld run data merge block 1388 81 2273 {Command:"/fill 1387 85 2269 1392 85 2274 minecraft:glowstone replace minecraft:cyan_stained_hardened_clay"}
execute in minecraft:overworld run data merge block 1388 79 2273 {Command:"/particle flame 1377 105.5 2310.5 0.3 0.3 0.3 0.5 1000 force @a[distance=..64]"}
execute in minecraft:overworld run data merge block 1389 80 2273 {Command:"/playsound entity.ender_dragon.death master @a[distance=..64] ~ ~ ~ 1 2 0.2"}

advancement revoke @s only tusb_remake:gimmic/simmic/trigger
