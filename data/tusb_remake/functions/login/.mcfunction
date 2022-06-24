#> tusb_remake:login/
# ログイン時に毎回する処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### サーバープロパティ間違ってる時のために、難易度ハードにする
difficulty hard

### 正常な時
execute if entity @s[tag=Resolved] if score @s Job = @s Job run function tusb_remake:login/normal
### エラーの時
execute if entity @s[tag=Resolved] unless score @s Job = @s Job run function tusb_remake:login/error

### ログインしたフラグをリセット
scoreboard players reset @s LeaveGame

###難易度調整
function tusb_remake:set_difficulty/
