#> area:makeup/nether_trial
# ネザーアスレに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function area:makeup/
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 4 0.5 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"浄火","bold":true,"color":"#000000"},{"text":"燃","bold":true,"color":"#a31000"},{"text":"ゆる地の","bold":true,"color":"#000000"},{"text":"技能試練","bold":true,"color":"#a31000"},{"text":" =","color":"#ffffff"}]
title @s title {"text":" ネザーアスレ ","color":"#a42900","bold":true,"underlined":true}