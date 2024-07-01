#> core:one_minute
#
#> 1分ごと処理群（追加）
#
#
#> AD二次創作にて追加する処理群はこっちに記入すること

### １分処理

scoreboard players add $Minutes Count 1
execute if score $Minutes Count matches 60.. run function core:one_hour

scoreboard players set $TenSeconds Count 0