#> player:tick/trigger/first_join/set_skill_storage_loop
#
# プレイヤーが覚えたスキルを確認するためのストレージを生成する（ループ処理）
#
#

# 小分けしたストレージにぶち込んでいくぜ～～
    data modify storage ad_skill: _B append from storage ad_skill: _A
    data modify storage ad_skill: _B append from storage ad_skill: _A
    data modify storage ad_skill: _B append from storage ad_skill: _A
    data modify storage ad_skill: _B append from storage ad_skill: _A
    data modify storage ad_skill: _A set from storage ad_skill: _B
    data remove storage ad_skill: _B

# ループするかどうか
    scoreboard players add _ _ 1
    execute if score _ _ matches ..2 run function player:tick/trigger/first_join/set_skill_storage_loop