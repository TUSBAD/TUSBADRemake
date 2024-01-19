#> player:game_settings/show_world_info/
#
#> 難易度と全浄化率の表示
#
#
execute if score @s ChangeSettings matches 200 run function player:game_settings/show_world_info/all

# 210-219: 通常世界下層
# execute if score @s ChangeSettings matches 210..219 run function player:game_settings/show_world_info/skylands/
# 230-239: 交易島
# execute if score @s ChangeSettings matches 220..229 run function player:game_settings/show_world_info/tradeisland/
# 220-229: 通常世界上層
# execute if score @s ChangeSettings matches 230..239 run function player:game_settings/show_world_info/rev_skylands/