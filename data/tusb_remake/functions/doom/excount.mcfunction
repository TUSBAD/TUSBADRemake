#> tusb_remake:doom/excount
# 致死の宣告効果音の処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

## 致死の宣告効果音
scoreboard players remove @s DoomEX 1
title @s[scores={DoomEX=41..61}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"score":{"name":"*","objective":"DoomEX"},"color":"#ff5b1e","bold":false,"italic":false},{"text":"秒","color":"gold","bold":true,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
title @s[scores={DoomEX=20..40}] actionbar [{"text":"☠ ","color":"#c60000","italic":false},{"text":"< ","color":"green","bold":true},{"score":{"name":"*","objective":"DoomEX"},"color":"#fe144f","bold":false,"italic":false},{"text":"秒","color":"red","bold":true,"italic":false},{"text":" >","color":"green","bold":true,"italic":false},{"text":" ☠","color":"#c60000","italic":false}]
title @s[scores={DoomEX=11..19}] actionbar [{"text":"☠ ","color":"#d900ce","italic":false},{"text":"< ","color":"dark_green","bold":true},{"score":{"name":"*","objective":"DoomEX"},"color":"#d200d2","bold":false,"italic":false},{"text":"秒","color":"light_purple","bold":true,"italic":false},{"text":" >","color":"dark_green","bold":true,"italic":false},{"text":" ☠","color":"#d900ce","italic":false}]
title @s[scores={DoomEX=0..10}] title [{"text":"☠ ","color":"#d900ce","italic":false},{"text":"< ","color":"dark_green","bold":true},{"score":{"name":"*","objective":"DoomEX"},"color":"#d200d2","bold":false,"italic":false},{"text":"秒","color":"light_purple","bold":true,"italic":false},{"text":" >","color":"dark_green","bold":true,"italic":false},{"text":" ☠","color":"#d900ce","italic":false}]
#playsound entity.zombie_villager.converted master @s[scores={DoomEX=21..61}] ~ ~ ~ 0.5 0.8 0.25
#playsound block.conduit.deactivate master @s[scores={DoomEX=21..61}] ~ ~ ~ 0.25 0.75 0.25
#playsound block.beacon.deactivate master @s[scores={DoomEX=21..61}] ~ ~ ~ 0.5 0.85 0.5
playsound block.comparator.click master @s[scores={DoomEX=31..61}] ~ ~ ~ 0.5 1 0.25
playsound block.anvil.land master @s[scores={DoomEX=11..30}] ~ ~ ~ 0.5 1.414 0.25
playsound block.bell.use master @a[scores={DoomEX=0..10}] ~ ~ ~ 0.25 0.5 0.05