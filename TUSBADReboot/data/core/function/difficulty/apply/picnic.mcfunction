#> core:difficulty/apply/picnic
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：ピクニック

#> チーム色変更
execute unless data storage core: difficult{world:"picnic"} run function core:difficulty/color/picnic

data modify storage core: difficult.before set from storage core: difficult.world
data modify storage core: difficult.world set value "picnic"

#> 難易度による補正欄
# アナザー/ハードコアのみKeepInventoryはfalseとなる
gamerule keepInventory true

#> チャット表示
tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"ピクニック","color":"#80ff00"}]}]
execute as @a at @s run playsound minecraft:xp_chime master @s ~ ~ ~ 1 0.5 1