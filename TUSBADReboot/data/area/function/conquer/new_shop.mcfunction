#> area:conquer/new_shop
# 新しいお店が追加されるときの処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

### もし頭のアイテムが壊れていたら、設置してあるものを被る
loot replace entity @s armor.head mine ^ ^ ^-1
### 動けるようにする
data remove entity @s NoAI
### お店に追加
tag @s add NewShopStaff
