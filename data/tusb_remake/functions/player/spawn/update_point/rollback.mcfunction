#> tusb_remake:player/spawn/update_point/rollback
# 寝た時にスポーンポイントを戻す
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 戻したい地点に移動
execute store result entity @s Pos[0] double 1 run data get storage tusb_remake: spawn_point[0]
execute store result entity @s Pos[1] double 1 run data get storage tusb_remake: spawn_point[1]
execute store result entity @s Pos[2] double 1 run data get storage tusb_remake: spawn_point[2]
### プレイヤーのスポーン地点を設定
execute at @s run spawnpoint @a[tag=SpawnPointRollback] ~ ~ ~

### エンティティの場所を戻す
tp @s ~ ~ ~
### エンティティを消す
kill @s
