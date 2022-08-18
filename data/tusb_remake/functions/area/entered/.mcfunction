#> tusb_remake:area/entered/
### サバイバルorアドベンチャー判定

execute if data storage tusb_remake: {"アドベンチャーエリア":true} run gamemode adventure @s[gamemode=survival]
execute if data storage tusb_remake: {"アドベンチャーエリア":false} run gamemode survival @s[gamemode=adventure]