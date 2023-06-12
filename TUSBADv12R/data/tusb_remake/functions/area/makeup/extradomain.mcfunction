#> tusb_remake:area/makeup/extradomain
# エクストラドメインに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
playsound minecraft:ambient.crimson_forest.shine_1 master @s ~ ~ ~ 4 1.8 0
playsound minecraft:ambient.crimson_forest.shine_1 master @s ~ ~ ~ 4 1.4 0
playsound minecraft:ambient.crimson_forest.shine_2 master @s ~ ~ ~ 4 1.7 0
playsound minecraft:ambient.crimson_forest.shine_3 master @s ~ ~ ~ 4 0.8 0
playsound minecraft:ambient.nether_waste.mood_3 master @s ~ ~ ~ 4 1.1 0
playsound minecraft:ambient.nether_waste.mood_3 master @s ~ ~ ~ 4 1.7 0
title @s subtitle [{"text":"= ","color":"white"},{"text":"天空","color":"#23DDFA","bold":true},{"text":"浮かぶ","color":"#686868","bold":true},{"text":"宝物","color":"#e68400","bold":true},{"text":"遺跡","color":"#686868","bold":true},{"text":" =","color":"white"}]
title @s title [{"translate":"エ","color":"#ff0000"},{"translate":"ク","color":"#ff9900"},{"translate":"ス","color":"#ffff00"},{"translate":"ト","color":"#00ff00"},{"translate":"ラ","color":"#00ffff"},{"translate":"ド","color":"#4a86e8"},{"translate":"メ","color":"#0000ff"},{"translate":"イ","color":"#9900ff"},{"translate":"ン","color":"#ff00ff"}]