#> tusb_remake:skill/display/instant/b
## スキルテーブルを設定
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

###
data modify storage tusb_remake: skill_slot_title set from storage tusb_remake: skill_slot_titles.instant.b
tellraw @s [{"text":"以下のスキルから１つを","color":"green"},{"nbt":"skill_slot_title","storage":"tusb_remake:","interpret":true},"に設定できます。"]

### 職業に合わせてスキルテーブルを取得
execute if score @s Job matches 1 run function tusb_remake:skill/display/instant/get_choices/knight
execute if score @s Job matches 2 run function tusb_remake:skill/display/instant/get_choices/ninja
execute if score @s Job matches 3 run function tusb_remake:skill/display/instant/get_choices/archer
execute if score @s Job matches 4 run function tusb_remake:skill/display/instant/get_choices/white_mage
execute if score @s Job matches 5 run function tusb_remake:skill/display/instant/get_choices/black_mage
execute if score @s Job matches 6 run function tusb_remake:skill/display/instant/get_choices/summoner

### 覚えられるスキルだけにする
data modify storage tusb_remake: list set value []
function tusb_remake:skill/display/check

### それぞれのスキルを表示用に変換する
### スキル変換時のごり押しテーブル
data modify storage tusb_remake: jsons set from storage tusb_remake: skill_display_jsons
data modify storage tusb_remake: skill_choices set value []
execute if data storage tusb_remake: list[0] run function tusb_remake:skill/display/translate/
tellraw @s [" ",{"text":"スキルを外す","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 99"}}," ",{"nbt":"skill_choices[0].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 0"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[0].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[0].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[0].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[0].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[0].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[0].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[1].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 1"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[1].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[1].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[1].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[1].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[1].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[1].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[2].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 2"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[2].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[2].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[2].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[2].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[2].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[2].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[3].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 3"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[3].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[3].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[3].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[3].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[3].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[3].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[4].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 4"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[4].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[4].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[4].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[4].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[4].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[4].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[5].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 5"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[5].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[5].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[5].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[5].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[5].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[5].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[6].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 6"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[6].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[6].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[6].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[6].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[6].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[6].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[7].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 7"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[7].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[7].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[7].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[7].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[7].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[7].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[8].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 8"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[8].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[8].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[8].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[8].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[8].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[8].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[9].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 9"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[9].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[9].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[9].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[9].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[9].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[9].sneak.json","storage":"tusb_remake:","interpret":true}]}}," ",{"nbt":"skill_choices[10].name","storage":"tusb_remake:","clickEvent":{"action":"run_command","value":"/trigger InstantChangeB set 10"},"hoverEvent":{"action":"show_text","contents":["",{"nbt":"skill_choices[10].name","storage":"tusb_remake:","color":"gold"}," ",[{"text":"消費MP: ","color":"yellow"},{"nbt":"skill_choices[10].cost","storage":"tusb_remake:","bold":true}],"\n",{"nbt":"skill_choices[10].description[]","storage":"tusb_remake:","separator":"\n"},"\n",["効果範囲: ",{"nbt":"skill_choices[10].range.json","storage":"tusb_remake:","interpret":true}],"\n",["効果時間: ",{"nbt":"skill_choices[10].duration.json","storage":"tusb_remake:","interpret":true}],{"nbt":"skill_choices[10].sneak.json","storage":"tusb_remake:","interpret":true}]}}]

scoreboard players set @s InstantChangeB -1
scoreboard players enable @s InstantChangeB
