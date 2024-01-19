#> calc:island/clear_count
#
#> 浄化数抽出
#
#
#> 初期化
scoreboard players set _ Ret 0
#> skylands
execute store result score _ _ run data get storage area: purified.skylands
scoreboard players operation _ Ret += _ _
#> trade_insland
execute store result score _ _ run data get storage area: purified.tradeisland
scoreboard players operation _ Ret += _ _
#> rev_skylands
execute store result score _ _ run data get storage area: purified.rev_skylands
scoreboard players operation _ Ret += _ _

scoreboard players get _ Ret