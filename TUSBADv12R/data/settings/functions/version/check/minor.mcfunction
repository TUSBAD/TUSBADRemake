#> settings:version/check/minor
#
#> マイナーバーションのチェック
#
#@within function settings:version/**

execute store result score $World Calc run data get storage ad_remake: Version.Minor
execute store result score $World _ run data get storage ad_remake: UpdatingVersion.Minor

execute if score $World Calc > $World _ run tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.ERROR"},{"translate":"[System] 古いバージョンです。最新のデータパックをDLしてください。"}]
execute if score $World Calc = $World _ run tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.INFO"},{"translate":"[System] 最新のバージョンです。"}]
execute if score $World Calc < $World _ run tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.SUCCESS"},{"translate":"[System] 正常にアップデートされました。"}]
execute if score $World Calc < $World _ run function settings:version/update/