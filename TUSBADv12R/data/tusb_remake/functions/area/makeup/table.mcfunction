#> tusb_remake:area/makeup/table
# テーブルマウンテンに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

function tusb_remake:area/makeup/
playsound minecraft:entity.elder_guardian.ambient master @s ~ ~ ~ 4 0.5 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"試練与える高き山","bold":true,"color":"#31fb2d"},{"text":" =","color":"#ffffff"}]
title @s title {"text":"テーブルマウンテン","color":"#17c200","bold":true,"underlined":true}