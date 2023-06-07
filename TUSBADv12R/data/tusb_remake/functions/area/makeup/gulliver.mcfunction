#> tusb_remake:area/makeup/gulliver
# ガリバーランドに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
playsound minecraft:ambient.cave_2 master @s ~ ~ ~ 4 1.4 0
playsound minecraft:ambient.cave_2 master @s ~ ~ ~ 4 1.7 0
title @s subtitle [{"text":"= ","color":"white"},{"text":"小さき隠者達の逆転世界","bold":true,"color":"#ffd700"},{"text":" =","color":"white"}]
title @s title {"text":"ガリバーランド","color":"#ffd700","bold":true,"underlined":true}