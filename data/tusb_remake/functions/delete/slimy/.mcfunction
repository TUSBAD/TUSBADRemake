#> tusb_remake:delete/slimy/
# スライム系専用削除処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 削除フラグを立てる
tag @s add Garbage
### サイズ変更
data modify entity @s[type=slime,tag=!SizeModified] Size set value 0
data modify entity @s[type=magma_cube,tag=!SizeModified] Size set value 1
### 何度もサイズ変更されないようにする
tag @s add SizeModified
