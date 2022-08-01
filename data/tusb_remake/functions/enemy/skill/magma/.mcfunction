#> tusb_remake:enemy/skill/magma/
# はぐれマグマのスキル
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

execute if score @s MobCastTime matches 0..7 run function tusb_remake:enemy/skill/magma/explode/
execute if score @s MobCastTime matches 8..19 run function tusb_remake:enemy/skill/magma/escape/
