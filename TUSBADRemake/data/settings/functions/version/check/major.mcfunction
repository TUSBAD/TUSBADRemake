#> settings:version/check/major
#
#> メジャーバーションのチェック
#
#@within function settings:version/**

execute store result score $World Calc run data get storage ad_remake: Version.Major
execute store result score $World _ run data get storage ad_remake: UpdatingVersion.Major

execute unless score $World Calc = $World _ run tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.CRIT"},{"translate":"[System] 古いバージョンです。ワールド本体の更新が必要です。"}]
execute if score $World Calc = $World _ run function settings:version/check/minor