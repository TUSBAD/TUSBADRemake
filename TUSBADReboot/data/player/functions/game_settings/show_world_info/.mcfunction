#> player:game_settings/show_world_info/
#
#> 難易度と全浄化率の表示
#
#

#> 200:ALL
execute if score @s ChangeSettings matches 200 run function player:game_settings/show_world_info/all
#> 201:Page1
execute if score @s ChangeSettings matches 201 run function player:game_settings/show_world_info/page_1
#> 202:Page2
execute if score @s ChangeSettings matches 202 run function player:game_settings/show_world_info/page_2

#> 210-219: 通常世界下層
 execute if score @s ChangeSettings matches 210 run function player:game_settings/show_world_info/skylands/page_1
 execute if score @s ChangeSettings matches 211 run function player:game_settings/show_world_info/skylands/page_2
 execute if score @s ChangeSettings matches 212 run function player:game_settings/show_world_info/skylands/page_3
 execute if score @s ChangeSettings matches 213 run function player:game_settings/show_world_info/skylands/page_4
 execute if score @s ChangeSettings matches 214 run function player:game_settings/show_world_info/skylands/page_5
#> 230-239: 交易島
 execute if score @s ChangeSettings matches 230..239 run function player:game_settings/show_world_info/tradeisland/
# 220-229: 通常世界上層
# execute if score @s ChangeSettings matches 230..239 run function player:game_settings/show_world_info/rev_skylands/