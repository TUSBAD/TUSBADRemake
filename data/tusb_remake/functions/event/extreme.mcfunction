#> tusb_remake:event/extreme

# extreme

# 時計島形態を取得
execute store result score _ TUSB run data get storage tusb_remake: conquer.rate.int[]
scoreboard players operation ConqCheck Global = _ TUSB
# 形態に応じて次の予感タイマーをセットする
execute if score _ TUSB matches ..10 run function tusb_remake:event/extreme_timer/0
execute if score _ TUSB matches 11..39 run function tusb_remake:event/extreme_timer/1
execute if score _ TUSB matches 40..69 run function tusb_remake:event/extreme_timer/2
execute if score _ TUSB matches 70.. run function tusb_remake:event/extreme_timer/3
# 30-30 25-25 20-20 15-15