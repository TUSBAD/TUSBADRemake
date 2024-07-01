#> skill:practice/check_type
#
# MP確認処理
#
#
#成功フラグリセット
data remove storage skill: Success
#Type分岐
execute if data storage skill: Skill{Type:"Trigger"} run function skill:practice/job/check_mp
