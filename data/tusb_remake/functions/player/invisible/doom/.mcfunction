#> tusb_remake:player/invisible/doom/
# 透明化がかかっている場合、それに応じて特殊効果をかける
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

playsound item.trident.thunder master @s ~ ~ ~ 5 1 1
me は死の宣告の効果を受けた！
scoreboard players set @s Doom 11
scoreboard players set @s DoomSecond 1
tag @s add Doom
