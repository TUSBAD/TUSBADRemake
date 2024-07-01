#> core:ten_second
#
#> 10秒ごと処理群（追加）
#
#
#> AD二次創作にて追加する処理群はこっちに記入すること

scoreboard players add $TenSeconds Count 1
execute if score $TenSeconds Count matches 6.. run function core:one_minute
scoreboard players set $Seconds Count 0