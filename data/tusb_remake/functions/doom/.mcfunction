#> tusb_remake:doom/
# 死の宣告の処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

## 死の宣告
scoreboard players remove @s DoomSecond 1
scoreboard players remove @s[scores={DoomSecond=..0}] Doom 1
title @s[scores={DoomSecond=..0,Doom=10..11}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"#fe144f","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"score":{"name":"*","objective":"Doom"},"color":"#fe144f","bold":false,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
title @s[scores={DoomSecond=..0,Doom=0..9}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"#fe144f","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"0","color":"#fe144f","bold":false,"italic":false},{"score":{"name":"*","objective":"Doom"},"color":"#fe144f","bold":false,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
playsound block.comparator.click master @s[scores={DoomSecond=..0,Doom=4..11}] ~ ~10 ~ 10 1 1
playsound block.bell.use master @s[scores={DoomSecond=..0,Doom=0..3}] ~ ~10 ~ 10 0.5 1
scoreboard players set @s[scores={DoomSecond=..0}] DoomSecond 3
gamerule showDeathMessages false
execute if score @s Doom matches 0 run me は§4§l命§cを刈り取られた。§r
kill @s[scores={Doom=..0}]
gamerule showDeathMessages true
tag @s[scores={Doom=..0}] remove Doom
