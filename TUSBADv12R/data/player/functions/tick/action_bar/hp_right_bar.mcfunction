#> player:tick/action_bar/hp_right_bar
#
# #HPバーの描画を管理する（右側ドットLoop処理）
#
#

data modify storage player: HP_Bar append value '{"translate":">","font":"hpbar","color":"#233645"}'
data modify storage player: HP_Bar append value '{"translate":"\\uF801","font":"space"}'
scoreboard players add _ __ 1
execute if score _ __ matches ..-1 run function player:tick/action_bar/hp_right_bar