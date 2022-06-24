#> tusb_remake:portal/gateway
# 
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# say わあああああああぷ！！

tag @s add PortalCheck

# ### 初期スポーン地点からブラジル行き
# execute if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned -1935 111 -137 align xyz if entity @s[dx=0,dy=1,dz=1] run tp @s -1739 107 -137

# ### 交易島からスキル設定場行き
# execute if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned -50 23 34 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2725 88 -382

# ### スキル設定場でのワープ
# execute if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned -2715 91 -389 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2795 75.5 -381
# execute if entity @s[nbt={Dimension:"minecraft:overworld"}] positioned -2795 78 -381 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2715 88.5 -389

advancement revoke @s only tusb_remake:portal/gateway
