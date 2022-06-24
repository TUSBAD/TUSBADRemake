#> tusb_remake:portal/warp/overworld
## オーバーワールドでのワープをチェックして実行
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 初期スポーン地点からブラジル行き
execute positioned -1935 111 -137 align xyz if entity @s[dx=0,dy=1,dz=1] run tp @s -1739 107 -137

### 交易島からスキル設定場行き
execute positioned -50 23 34 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2724.0 88 -382.0 90 0
### スキル設定場でのワープ
execute positioned -2715 91 -389 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2795 75.5 -381
execute positioned -2795 78 -381 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2715 88.5 -389
### スキル設定場から交易島
execute positioned -2711 91 -383 align xyz if entity @s[dx=1,dy=0,dz=1] run tp @s -53 23.5 34 90 12.5

### スキル設定場からエクストラドメイン
execute positioned -2722 89 -268 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2721 43.5 -33
### エクストラドメインからスキル設定場
execute positioned -2721 43 -38 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2722 88.5 -282

### チュートリアルワープ
execute if data storage tusb_remake: portal.cloudia.tutorial positioned -1885 114 -194 align xyz if entity @s[dx=0,dy=1,dz=0] run tp @s -1887 115.5 -189
### クラウディア城までのワープ
execute if data storage tusb_remake: portal.cloudia.castle positioned -2478 4 -128 align xyz if entity @s[dx=0,dy=1,dz=0] run tp @s -2374.5 80.5 -130.5
