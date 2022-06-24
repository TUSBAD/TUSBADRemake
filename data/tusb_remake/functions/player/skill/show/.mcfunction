#> tusb_remake:player/skill/show/
# スキル名称の表示
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if entity @s[scores={ShowSkill=1000..1999}] run function tusb_remake:player/skill/show/knight
execute if entity @s[scores={ShowSkill=2000..2999}] run function tusb_remake:player/skill/show/ninja
execute if entity @s[scores={ShowSkill=3000..3999}] run function tusb_remake:player/skill/show/archer
execute if entity @s[scores={ShowSkill=4000..4999}] run function tusb_remake:player/skill/show/white_mage
execute if entity @s[scores={ShowSkill=5000..5999}] run function tusb_remake:player/skill/show/black_mage
execute if entity @s[scores={ShowSkill=6000..6999}] run function tusb_remake:player/skill/show/summoner

tellraw @s[scores={ShowSkill=0}] [{"text":"・"},{"text":"未設定","color":"yellow"}]
scoreboard players reset @s ShowSkill
