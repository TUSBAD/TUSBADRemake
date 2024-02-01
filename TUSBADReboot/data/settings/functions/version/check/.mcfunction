#> settings:version/check/
#
#
#データパックのアップデート
#データパック更新後プレイヤーがこのfunctionを実行する

execute unless data storage ad_remake: Version run data modify storage ad_remake: Version set value {Major:0,Minor:0}

data modify storage ad_remake: UpdatingVersion set value {Major:0,Minor:0}

tellraw @a [{"storage":"ad_remake:","nbt":"Prefix.INFO"},{"translate":"[System] 以前のVersion: v1.%1$s.%2$s.α   現在のVersion: v1.%3$s.%4$s.α","color":"green","with":[{"storage":"ad_remake:","nbt":"Version.Major"},{"storage":"ad_remake:","nbt":"Version.Minor"},{"storage":"ad_remake:","nbt":"UpdatingVersion.Major"},{"storage":"ad_remake:","nbt":"UpdatingVersion.Minor"}]}]


#メジャーバージョンチェック
function settings:version/check/major
