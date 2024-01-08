#> tusb_remake:event/rank/
# イベントモブ召喚分岐
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.
# 攻略率によって対象エリアや中身を分岐させる
tag @s remove CauseEvent
execute if score #ConqCheck Global matches ..10 if predicate tusb_remake:area/skyland run function tusb_remake:event/rank/first/
execute if score #ConqCheck Global matches 11..39 run function tusb_remake:event/rank/second/
execute if score #ConqCheck Global matches 40..69 run function tusb_remake:event/rank/third/
execute if score #ConqCheck Global matches 70.. run function tusb_remake:event/rank/final/
