#> tusb_remake:player/death/in_nether_trial
# プレイヤーがネザーアスレチックで死んだとき
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### レイズの効果をかける
tag @s add Raise
### ネザーでかかったことにする
scoreboard players set @s RaisedArea -90
scoreboard players set @s Hunger 21
gamemode spectator @s
### ネザーアスレチックのエリトラ持ってたら消す
clear @a[nbt={Inventory:[{tag:{TrialItem:true}}]}]
