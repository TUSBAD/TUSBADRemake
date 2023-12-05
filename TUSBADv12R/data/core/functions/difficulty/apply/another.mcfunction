#> core:difficulty/apply/another
#
# 難易度の変更
#
#@within difficulty:*
# 難易度：アナザー

#> チーム色変更
execute unless data storage core: difficult{world:"another"} run function core:difficulty/color/another

data modify storage core: difficult.world set value "another"

#> 難易度による補正欄

#> チャット表示
tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate":"アナザー","color":"#FF00FF"}]}]
execute as @a at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 0 1
