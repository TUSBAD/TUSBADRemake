#> tusb_remake:armor_stand/tent/1
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..16] ~ ~ ~ 1 0.5 1
execute if score @s TUSB matches 243.. run clone -1923 13 -75 -1917 17 -69 ~-3 ~-1 ~-3 masked
execute if score @s TUSB matches 243.. run kill @s
