#> tusb_remake:clock/half_tick
# 0.25秒毎に実行したいもの
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.
### 正直これだけのために実装するのもなんかアレだけど致し方なし。

playsound block.bell.use master @s[scores={DoomEX=0..10}] ~ ~ ~ 0.5 0.5 0.25

execute in minecraft:overworld run schedule function tusb_remake:clock/half_tick 5t