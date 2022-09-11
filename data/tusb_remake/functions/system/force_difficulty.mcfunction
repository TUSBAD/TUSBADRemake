#> tusb_remake:system/force_difficulty
#
#
#
# @within function tusb_remake:clock/first

#> Val
# @private
#declare score_holder $Difficulty

# 難易度を取得する
    execute store result score $Difficulty TUSB run difficulty
# ピースフルの場合の変更処理
    execute if score $Difficulty TUSB matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度をピースフルにすることは出来ません。"}]
    execute if score $Difficulty TUSB matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度はイージーに変更されました。"}]
    execute if score $Difficulty TUSB matches 0 run difficulty easy
# リセット
    scoreboard players reset $Difficulty TUSB