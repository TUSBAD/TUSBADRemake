#> player:game_settings/show_world_info/page_1
#
#> ワールドデータ表示
#
#> トカルト・図書館・エンド・ニヴル・虚数空間・異空間・異次元・朽ち果てた戦場

tellraw @s "====================================================="

tellraw @s [{"translate":"[前のページ]","color":"#ff8080","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[次のページ]","color":"#60ffff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 202"}},{"translate":" / ","color": "white","clickEvent":{"action": "run_command","value": ""}},{"translate":"[最初のページ]","color":"#00ff80","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 200"}}]

execute if data storage core: difficult{world:"picnic"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ピクニック","color":"#80ff00"}]
execute if data storage core: difficult{world:"casual"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"カジュアル","color":"#FF2A2A"}]
execute if data storage core: difficult{world:"another"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"アナザー","color":"#FF00FF"}]
execute if data storage core: difficult{world:"hardcore"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"ハードコア","color":"#FF00FF"}]
execute if data storage core: difficult{world:"debug"} run tellraw @s [{"translate":"現在の難易度"}," : ",{"translate":"デバッグ","color":"dark_gray"}]
tellraw @s ""
tellraw @s [{"storage":"ad_remake:","nbt":"Prefix.TIPS"},{"translate":"各ディメンション名を%1$sで詳細情報を確認できます。","bold": true,"with":[{"translate":"クリック","color":"#ff9e57","bold": true}]}]
tellraw @s ""
tellraw @s ""

#> 290-299: トカルト
execute store result score _ Calc run data get storage area: capture.tocult_colde
execute store result score # _ run function calc:island/get_total/tocult_colde
tellraw @s [{"translate":"トカルトコルデ","color":"#14fffb","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 290"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 300-309: 図書館
execute store result score _ Calc run data get storage area: capture.library
execute store result score # _ run function calc:island/get_total/library
tellraw @s [{"translate":"大図書館","color":"#fda31c","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 300"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 310-319: エンド
execute store result score _ Calc run data get storage area: capture.end
execute store result score # _ run function calc:island/get_total/end
tellraw @s [{"translate":"エ ン ド","color":"#c11eff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 310"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 320-329: ニヴル
execute store result score _ Calc run data get storage area: capture.niflheimr
execute store result score # _ run function calc:island/get_total/niflheimr
tellraw @s [{"translate":"ニヴルヘイム","color":"#2693ff","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 320"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 330-339: 虚数空間
execute store result score _ Calc run data get storage area: capture.imaginary_space
execute store result score # _ run function calc:island/get_total/imaginary_space
tellraw @s [{"translate":"虚数空間","color":"#758492","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 330"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 340-349: 異空間
execute store result score _ Calc run data get storage area: capture.unusual_space
execute store result score # _ run function calc:island/get_total/unusual_space
tellraw @s [{"translate":"異 空 間","color":"#e60005","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 340"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 350-359: 異次元
execute store result score _ Calc run data get storage area: capture.another_dimension
execute store result score # _ run function calc:island/get_total/another_dimension
tellraw @s [{"translate":"異 次 元","color":"#02ca9d","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 350"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

#> 360-369: 朽ち果てた戦場
execute store result score _ Calc run data get storage area: capture.ancient_field
execute store result score # _ run function calc:island/get_total/ancient_field
tellraw @s [{"translate":"朽ち果てた戦場","color":"#b9176c","clickEvent":{"action": "run_command","value": "/trigger ChangeSettings set 360"}}," : ",{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}}]

tellraw @s ""
tellraw @s ""
tellraw @s [{"translate":"攻略時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},[{"score":{"name":"$TenSeconds","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]]}]

tellraw @s "====================================================="