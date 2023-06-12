#> tusb_remake:area/makeup/ancient
# 朽ち果てた戦場に移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
playsound minecraft:ambient.basalt_deltas.basaltground_4 master @s ~ ~ ~ 4 0.6 0
playsound minecraft:ambient.basalt_deltas.basaltground_4 master @s ~ ~ ~ 4 0.8 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"嘗ての兵たちの薫陶残りし地","bold":true,"color":"#be1d21"},{"text":" =","color":"#ffffff"}]
title @s title {"text":"朽ち果てた戦場","color":"#b9176c","bold":true,"underlined":true}