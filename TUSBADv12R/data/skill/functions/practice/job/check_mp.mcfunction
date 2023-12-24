#> skill:practice/job/check_mp
#
# MP確認処理
#
#
#MP取得
execute store result score _ MP run data get storage skill: Data.MPCost

#MP確認
execute unless score @s MP >= _ MP run function makeup:skill/practice/error/low_mp

execute if score @s MP >= _ MP run function skill:practice/success
