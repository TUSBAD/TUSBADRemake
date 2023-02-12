#> tusb_remake:doom/ex
# 致死の宣告の処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

## 死の宣告
# 軽減不可ダメージ
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:5,EPF:0,BypassArmor:true,BypassResistance:false,DeathCause:'[{"translate":"%1$sは%2$sと踊ってしまった。","with":[{"selector":"@s"},{"translate":"死の運命","color":"#aa16f1","bold":true}]}]'}
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument
