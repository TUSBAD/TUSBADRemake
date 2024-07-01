#> player:tick/action_bar/hp
#
# #HPバーの描画を管理する
#
#

#HPバー用ストレージの作成（すでに枠組みは入れておく）
data modify storage player: HP_Bar append value '{"translate":"\\uF80C","font":"space"}'
data modify storage player: HP_Bar append value '{"translate":"\\uF80B","font":"space"}'
data modify storage player: HP_Bar append value '{"translate":"\\uF808","font":"space"}'
data modify storage player: HP_Bar append value '{"translate":"<","font":"hpbar"}'
data modify storage player: HP_Bar append value '{"translate":"\\uF80B","font":"space"}'
data modify storage player: HP_Bar append value '{"translate":"\\uF809","font":"space"}'
data modify storage player: HP_Bar append value '{"translate":"\\uF802","font":"space"}'

#プレイヤーのHP割合の取得（緩衝体力込み）
execute store result score _ _ run attribute @s generic.max_health get 10
execute store result score _ __ run data get entity @s Health 10
execute store result score _ Calc run data get entity @s AbsorptionAmount 10
scoreboard players operation _ _ += _ Calc
scoreboard players operation _ __ += _ Calc
scoreboard players set _ Calc 80
scoreboard players operation _ __ *= _ Calc
scoreboard players operation _ __ /= _ _
scoreboard players operation _ _ = _ __
execute if score _ _ matches 1.. run function player:tick/action_bar/hp_left_bar
scoreboard players remove _ __ 80
execute if score _ __ matches ..-1 run function player:tick/action_bar/hp_right_bar