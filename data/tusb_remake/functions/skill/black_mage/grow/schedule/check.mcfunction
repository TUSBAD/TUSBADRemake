#> tusb_remake:skill/black_mage/weather/schedule/check
### キャンドルの効果判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[nbt={Fire:0s}] run weather clear
execute unless entity @s[nbt={Fire:0s}] run weather rain

kill @e[type=arrow,tag=Weather]
