#> tusb_remake:clock/half_sec
# 0.5秒毎に実行したいもの
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

### 特殊エリアでの水ダメージ
execute as @a[predicate=tusb_remake:fluid_gimmic_area,predicate=tusb_remake:is_in_water/include_flowing] at @s run function tusb_remake:clock/gimmic/fluid/water_damage

### 特殊エリアでの溶岩ダメージ
execute as @a[predicate=tusb_remake:fluid_gimmic_area,predicate=tusb_remake:is_in_lava/include_flowing] at @s run function tusb_remake:clock/gimmic/fluid/lava_damage

### 0.5秒クロック
execute in minecraft:overworld run schedule function tusb_remake:clock/half_sec 10t