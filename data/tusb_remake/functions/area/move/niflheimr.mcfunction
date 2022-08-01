#> tusb_remake:area/move/niflheimr
# ニヴルヘイムに移動したときの演出
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

execute at @s run playsound minecraft:entity.skeleton_horse.death master @s ~ ~ ~ 4 0.5 0
title @s subtitle [{"text":"= ","color":"#ffffff"},{"text":"氷点下の氷下の都","bold":true,"color":"#7adeff"},{"text":" =","color":"#ffffff"}]
title @s title {"text":"ニヴルヘイム","color":"#2e62ff","bold":true,"underlined":true}

### エリア侵入記録
data modify storage tusb_remake: area_name.niflheimr set value "ニヴルヘイム"

### Adv処理
tag @s add Adv