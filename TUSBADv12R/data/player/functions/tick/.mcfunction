#> player:tick/
#
# #プレイヤーtick処理群（追加）
#
#
#AD二次創作にて追加する処理群はこっちに記入すること

#> プレイヤートリガー
execute if entity @s[scores={FirstJoin=1}] run function player:tick/trigger/first_join/
execute if entity @s[scores={UseCarrotStick=1..}] run function player:tick/trigger/carrot_stick

#> 幸運属性によるMP補正
execute store result score _ LUCK run attribute @s minecraft:generic.luck get 10
execute unless score _ LUCK = @s LUCK run function player:luck_update

#> MP自然回復
function player:tick/mp/mp_regen

#> アクションバー描画
execute if entity @s[predicate=player:player] run function player:tick/action_bar/