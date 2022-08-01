#> tusb_remake:area/move/end
# エンドに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.zombie.infect master @s ~ ~ ~ 4 0.5 0
title @s subtitle [{"text":"= ","color":"white"},{"text":"永劫不転の","bold":true,"color":"#686868"},{"text":"終","bold":true,"color":"#9900d1"},{"text":"着点","bold":true,"color":"#686868"},{"text":" =","color":"white"}]
title @s title [{"text":"ジ","color":"#9900d1","bold":true,"underlined":true},{"text":"・","bold":true,"underlined":true,"color":"#ffffff"},{"text":"エンド","bold":true,"underlined":true,"color":"#000000"}]

### Adv処理
tag @s add Adv
