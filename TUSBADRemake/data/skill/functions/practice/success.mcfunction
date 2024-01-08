#> skill:practice/success
#
# スキル成功時処理
#
#

#成功フラグ
data modify storage skill: Success set value 1b


# 職業変更制限反映
# execute if score @s ChangeJobLock matches ..0 store result score @s ChangeJobLock run time query gametime

#実行
function skill:practice/act/
#MP消費
execute if data storage skill: {Success:true} run scoreboard players operation @s MP -= _ MP

#スキルを使ったらMP回復速度を落とす
execute if data storage skill: {Success:true} if score _ MP matches 1.. run scoreboard players set @s MPAcceleration -600


#MPバー反映
function player:mp_bar/set
