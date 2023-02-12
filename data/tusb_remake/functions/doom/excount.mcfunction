#> tusb_remake:doom/excount
# 致死の宣告効果音の処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

## 致死の宣告効果音
scoreboard players remove @s DoomEX 1
title @s[scores={DoomEX=21..61}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"score":{"name":"*","objective":"DoomEX"},"color":"#ff5b1e","bold":false,"italic":false},{"text":"秒","color":"gold","bold":true,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
title @s[scores={DoomEX=0..20}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"score":{"name":"*","objective":"DoomEX"},"color":"#fe144f","bold":false,"italic":false},{"text":"秒","color":"red","bold":true,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
playsound block.comparator.click master @s[scores={DoomEX=21..61}] ~ ~ ~ 0.5 1 0.25
playsound block.bell.use master @s[scores={DoomEX=0..20}] ~ ~ ~ 0.5 0.5 0.25
