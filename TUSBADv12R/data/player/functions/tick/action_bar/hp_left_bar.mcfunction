#> player:tick/action_bar/hp_left_bar
#
# #HPバーの描画を管理する（左側ドットLoop処理）
#
#

data modify storage player: HP_Bar append value '{"translate":">","font":"hpbar","color":"#FF2626"}'
data modify storage player: HP_Bar append value '{"translate":"\\uF801","font":"space"}'
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. run function player:tick/action_bar/hp_left_bar