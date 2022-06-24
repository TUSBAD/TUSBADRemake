#> tusb_remake:run_command
## コマブロを実行する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 地下世界
### キノコの山へのワープクリスタルを開くコマブロ
execute align xyz if predicate tusb_remake:command/underworld/hill run function tusb_remake:area/portal/underworld/hill/open
### キノコの塔へのワープクリスタルを開くコマブロ
execute align xyz if predicate tusb_remake:command/underworld/tower run function tusb_remake:area/portal/underworld/tower/open

## テーブルマウンテン
### 地下水路へのワープクリスタルを開くコマブロ
execute align xyz if predicate tusb_remake:command/table_mountain/waterway run function tusb_remake:area/portal/table_mountain/waterway/open
### 幸福街へのワープクリスタルを開くコマブロ
execute align xyz if predicate tusb_remake:command/table_mountain/market run function tusb_remake:area/portal/table_mountain/market/open

## クラウディア
### チュートリアルのワープクリスタルを開くコマブロ
execute align xyz if predicate tusb_remake:command/cloudia/tutorial run function tusb_remake:area/portal/cloudia/tutorial/open
### クラウディア城へのワープクリスタルを開くコマブロ
execute align xyz if predicate tusb_remake:command/cloudia/castle run function tusb_remake:area/portal/cloudia/castle/open
### ハーローワークへのワープクリスタルを開くコマブロ
execute align xyz if predicate tusb_remake:command/cloudia/hello_work run function tusb_remake:area/portal/cloudia/hello_work/open
