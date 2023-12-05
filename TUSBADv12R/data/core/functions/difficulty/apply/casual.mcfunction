#> core:difficulty/apply/casual
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：カジュアル
# デフォルト

#> チーム色変更
execute unless data storage core: difficult{world:"casual"} run function core:difficulty/color/casual

data modify storage core: difficult.world set value "casual"

#> 難易度による補正欄

#> チャット表示
tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"カジュアル","color":"#ff2A2A"}]}]
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1 1
