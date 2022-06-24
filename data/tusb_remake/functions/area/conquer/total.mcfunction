#> tusb_remake:area/conquer/total
# 攻略したとき共通
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### トータル攻略数を取得
execute store result score _ TUSB run data get storage tusb_remake: conquer.count.total
### トータル攻略数を１増やす
execute store result storage tusb_remake: conquer.count.total int 1 run scoreboard players add _ TUSB 1

### C..PctInt = 攻略数 / 最大ポータル数 * 100.00
### C..PctDec = 攻略数 / 最大ポータル数 % 100.00
execute store result score _ TUSB run data get storage tusb_remake: conquer.count.total 10000
execute store result storage math: in int 1 run scoreboard players operation _ TUSB /= MaxPortalCount Settings
## 数字に分割
function #math:split_number

data modify storage tusb_remake: conquer.rate set value {int:[],cent:[]}
data modify storage tusb_remake: conquer.rate.int append from storage math: out[-5]
data modify storage tusb_remake: conquer.rate.int append from storage math: out[-4]
data modify storage tusb_remake: conquer.rate.int append from storage math: out[-3]
data modify storage tusb_remake: conquer.rate.cent append from storage math: out[-2]
data modify storage tusb_remake: conquer.rate.cent append from storage math: out[-1]

## ストレージだけでNで割った余りが0かどうか
execute store result storage tusb_remake: _ int 3 run data get storage tusb_remake: conquer.count.total 0.3333333334
execute store result storage tusb_remake: _ byte 1 run data modify storage tusb_remake: _ set from storage tusb_remake: conquer.count.total
execute if data storage tusb_remake: {_:false} run say 製作者村人追加しちゃう！！(TODO/実装中)
