#> tusb_remake:enemy/skill/red_rider/
# レッドライダーのスキル
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

execute if score @s MobCastTime matches 0..11 run function tusb_remake:enemy/skill/red_rider/summon
execute if score @s MobCastTime matches 8..19 run function tusb_remake:enemy/skill/red_rider/magic/
