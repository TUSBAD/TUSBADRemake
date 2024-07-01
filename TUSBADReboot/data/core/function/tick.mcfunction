#> core:tick
#
# #毎tick処理群（追加）
#
#
#AD二次創作にて追加する処理群はこっちに記入すること

### ハード固定化
    function core:system/force_difficulty

#> プレイヤーTick
    execute as @a at @s run function player:tick/

#> 1秒処理
scoreboard players add $Tick Count 1
execute if score $Tick Count matches 20.. run function core:one_second