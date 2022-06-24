#> tusb_remake:player/spawn/set
# スポーン地点を記録しながら設定する(spawnpointの代わり)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

spawnpoint @s ~ ~ ~
execute store result score @s SpawnX run data get entity @s SpawnX
execute store result score @s SpawnY run data get entity @s SpawnY
execute store result score @s SpawnZ run data get entity @s SpawnZ
