#> tusb_remake:area/makeup/purgatory
# 煉獄に移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
playsound minecraft:ambient.crimson_forest.mood_4 master @s ~ ~ ~ 4.0 1.5
playsound minecraft:ambient.crimson_forest.mood_4 master @s ~ ~ ~ 4.0 1.8
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"浄火","bold":true,"color":"#000000"},{"text":"燃","bold":true,"color":"#a31000"},{"text":"ゆる奈落の","bold":true,"color":"#000000"},{"text":"迷宮","bold":true,"color":"#a31000"},{"text":" =","color":"#ffffff"}]
title @s title {"text":" 煉  獄 ","color":"#a31000","bold":true,"underlined":true}