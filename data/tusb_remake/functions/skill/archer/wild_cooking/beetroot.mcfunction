#> tusb_remake:skill/archer/wild_cooking/beetroot
# ビートルートを焼く
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

execute store result score _ TUSB run clear @s minecraft:beetroot 1
execute if score _ TUSB matches 1.. run give @s minecraft:red_dye{display:{Name:'"§r天然着色料"'}} 1
execute if score _ TUSB matches 1.. run data modify storage tusb_remake: cooked_state set value "strange"

execute if score _ TUSB matches ..0 run function tusb_remake:skill/archer/wild_cooking/cooked_vegetable
