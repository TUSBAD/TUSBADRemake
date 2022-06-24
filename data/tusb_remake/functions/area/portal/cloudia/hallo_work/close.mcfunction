#> tusb_remake:area/portal/cloudia/hallo_work/close
### 職業島へのワープ閉じる

# クリスタルのmin.min -2479 3 -129
# コマブロ -2380 75 -131

data modify storage tusb_remake: portal_name set value "職業島"
data remove storage tusb_remake: portal.cloudia.hallo_work
execute positioned -2479 3 -129 run function tusb_remake:area/portal/close

### チャンク読み込み
execute positioned -2380 75 -131 run function tusb_remake:area/portal/set_command
setblock -2380 76 -131 minecraft:air
setblock -2380 76 -131 minecraft:oak_sign[rotation=4]{Text1:"",Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}',Text4:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/setblock ~ ~ ~ minecraft:redstone_block"},"text":""}'}
