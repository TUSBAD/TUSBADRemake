#> tusb_remake:area/makeup/end
# エンドに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 0.75 0
playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 0.7501 0
title @s subtitle [{"text":"= ","color":"white"},{"text":"永劫不転の","bold":true,"color":"#686868"},{"text":"終","bold":true,"color":"#9900d1"},{"text":"着点","bold":true,"color":"#686868"},{"text":" =","color":"white"}]
title @s title [{"text":"ジ","color":"#9900d1","bold":true,"underlined":true},{"text":" ","bold":true,"underlined":true,"color":"#9900d1"},{"text":"エンド","bold":true,"underlined":true,"color":"#000000"}]