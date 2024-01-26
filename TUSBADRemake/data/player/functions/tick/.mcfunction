#> player:tick/
#
# #プレイヤーtick処理群（追加）
#
#
#AD二次創作にて追加する処理群はこっちに記入すること

#> プレイヤートリガー
execute if entity @s[scores={FirstJoin=1}] run function player:tick/trigger/first_join/
execute if entity @s[scores={UseCarrotStick=1..}] run function player:tick/trigger/carrot_stick
execute if entity @s[scores={SneakTime=1..}] run function player:tick/trigger/sneak
execute if entity @s[scores={SneakFrequency=1..}] run function player:tick/trigger/sneak_frequency

#> 幸運属性によるMP補正
execute store result score _ LUCK run attribute @s minecraft:generic.luck get 10
execute unless score _ LUCK = @s LUCK run function player:luck_update

#> MP自然回復
function player:tick/mp/mp_regen

#> プレイヤーゲーム設定
execute unless score @s ChangeSettings matches 0 run function player:game_settings/triggered
#> プレイヤースキル設定
execute unless score @s ChangeSkill matches 0 run function skill:trigger/
#> 職業変更
#execute unless score @s ChangeJob matches 0 run function job:change/check

#> アクションバー描画
execute if entity @s[predicate=entity:player] run function player:tick/action_bar/