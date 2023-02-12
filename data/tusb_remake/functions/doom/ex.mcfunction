#> tusb_remake:doom/ex
# 致死の宣告の処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

## 致死の宣告
# 軽減不可ダメージ
  # 引数を設定
    data modify storage score_damage: Argument set value {EPF:0,BypassArmor:true,BypassResistance:false,DeathCause:'[{"translate":"%1$sは%2$sと踊ってしまった。","with":[{"selector":"@s"},{"translate":"死の運命","color":"#aa16f1","bold":true}]}]'}
    execute as @s[scores={DoomEX=50..61}] run data modify storage score_damage: Argument.Damage set value 2
    execute as @s[scores={DoomEX=30..49}] run data modify storage score_damage: Argument.Damage set value 5
    execute as @s[scores={DoomEX=11..29}] run data modify storage score_damage: Argument.Damage set value 7
    execute as @s[scores={DoomEX=1..10}] run data modify storage score_damage: Argument.Damage set value 10
    execute as @s[scores={DoomEX=..0}] run data modify storage score_damage: Argument.Damage set value 100
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument
