#> tusb_remake:display/skill
# 現在設定しているスキルを表示する
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

### モードスキル表示
tellraw @s[scores={ModeState=-1}] ["= ",{"translate":"現在のモードスキル設定(%1$s中)","bold":true,"with": [{"translate":"ルビーモード","bold": true,"color": "#f20274"}]}," ="]
tellraw @s[scores={ModeState=1}] ["= ",{"translate":"現在のモードスキル設定(%1$s中)","bold":true,"with": [{"translate":"サファイアモード","bold": true,"color": "#0080ff"}]}," ="]
scoreboard players operation @s ShowSkill = @s ModeSkillA
data modify storage tusb_remake: prefix set value '{"text":"・","color":"#f20274"}'
function tusb_remake:player/skill/show/display
scoreboard players operation @s ShowSkill = @s ModeSkillB
data modify storage tusb_remake: prefix set value '{"text":"・","color":"#0080ff"}'
function tusb_remake:player/skill/show/display

### 即時スキル表示
tellraw @s ["= ",{"translate":"現在のサポートスキル設定","bold":true}," ="]
scoreboard players operation @s ShowSkill = @s InstantSkillA
data modify storage tusb_remake: prefix set value '{"text":"・","color":"#f20274"}'
function tusb_remake:player/skill/show/display
scoreboard players operation @s ShowSkill = @s InstantSkillB
data modify storage tusb_remake: prefix set value '{"text":"・","color":"#0080ff"}'
function tusb_remake:player/skill/show/display
