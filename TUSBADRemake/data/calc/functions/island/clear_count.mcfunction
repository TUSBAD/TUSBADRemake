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
#> cloudia
execute store result score _ _ run data get storage area: purified.cloudia
scoreboard players operation _ Ret += _ _
#> underworld
execute store result score _ _ run data get storage area: purified.underworld
scoreboard players operation _ Ret += _ _
#> gullivers_land
execute store result score _ _ run data get storage area: purified.gullivers_land
scoreboard players operation _ Ret += _ _
#> table_mountain
execute store result score _ _ run data get storage area: purified.table_mountain
scoreboard players operation _ Ret += _ _
#> tocult_colde
execute store result score _ _ run data get storage area: purified.tocult_colde
scoreboard players operation _ Ret += _ _
#> library
execute store result score _ _ run data get storage area: purified.library
scoreboard players operation _ Ret += _ _
#> purgatory
execute store result score _ _ run data get storage area: purified.purgatory
scoreboard players operation _ Ret += _ _
#> end
execute store result score _ _ run data get storage area: purified.end
scoreboard players operation _ Ret += _ _
#> niflheimr
execute store result score _ _ run data get storage area: purified.niflheimr
scoreboard players operation _ Ret += _ _
#> imaginary_space
execute store result score _ _ run data get storage area: purified.imaginary_space
scoreboard players operation _ Ret += _ _
#> unusual_space
execute store result score _ _ run data get storage area: purified.unusual_space
scoreboard players operation _ Ret += _ _
#> another_dimension
execute store result score _ _ run data get storage area: purified.another_dimension
scoreboard players operation _ Ret += _ _
#> ancient_field
execute store result score _ _ run data get storage area: purified.ancient_field
scoreboard players operation _ Ret += _ _

return run scoreboard players get _ Ret