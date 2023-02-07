#> tusb_remake:enemy/skill/pale_rider/magic/effect
# ペイルライダーのスキル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 軽減不可の44.44dmg
  # 引数を設定
    data modify storage score_damage: Argument set value {Damage:44.44,EPF:0,BypassArmor:true,BypassResistance:true}
  # 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
  # 引数を明示的にリセット
    data remove storage score_damage: Argument

# 改変　もはや全部()