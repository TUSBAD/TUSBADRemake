#> core:one_second
#
# #一秒ごと処理群（追加）
#
#
#AD二次創作にて追加する処理群はこっちに記入すること

scoreboard players add $Seconds Count 1
execute if score $Seconds Count matches 10.. run function core:ten_seconds
scoreboard players set $Tick Count 0