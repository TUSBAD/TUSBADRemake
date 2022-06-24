#> tusb_remake:player/pick_exp/
# 経験値取得処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ネザースターの所持数を取得
execute store result score @s ItemCount run clear @s minecraft:nether_star

### 経験値を得られるプレイヤーがいた場合、経験値取得メッセージを出す
execute if entity @a[distance=..50,scores={HP=1..,Level=1..},limit=1] run function tusb_remake:player/pick_exp/get

### 経験値を得られないプレイヤーがいた場合、経験値取得失敗メッセージを出す
execute if entity @a[distance=50..,scores={HP=1..,Level=1..},limit=1] run tellraw @a {"translate":"%1$sは離れ過ぎていたため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[distance=50..,scores={HP=1..,Level=1..}]"}]}

### 死んでいるので経験値を得られないプレイヤーがいた場合、経験値取得失敗メッセージを出す
execute if entity @a[scores={HP=..0,Level=1..},limit=1] run tellraw @a {"translate":"%1$sは生存していないため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[scores={HP=..0,Level=1..}]"}]}

### 無職なので経験値を得られないプレイヤーがいた場合、経験値取得失敗メッセージを出す
execute if entity @a[scores={Level=..0},limit=1] run tellraw @a {"translate":"%1$sはジョブがないため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[scores={Level=..0}]"}]}
