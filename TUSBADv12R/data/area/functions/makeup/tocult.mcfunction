#> area:makeup/tocult
# トカルトに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function area:makeup/
playsound minecraft:ambient.crimson_forest.shine_1 master @s ~ ~ ~ 4 1.8 0
playsound minecraft:ambient.crimson_forest.shine_2 master @s ~ ~ ~ 4 0.7 0
playsound minecraft:ambient.crimson_forest.shine_3 master @s ~ ~ ~ 4 0.9 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"悠久不変の氷結大地","bold":true,"color":"#1499ff"},{"text":" =","color":"#ffffff"}]
title @s title {"text":"トカルトコルデ","color":"#14fffb","bold":true,"underlined":true}