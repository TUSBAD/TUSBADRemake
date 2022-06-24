#> tusb_remake:load/block_settings
# ブロックに対する設定

# data merge block -1935 112 -137 {ExactTeleport:true,ExitPortal:{X:-1739,Y:107,Z:-137}}
# data merge block -1935 112 -136 {ExactTeleport:true,ExitPortal:{X:-1739,Y:107,Z:-137}}
# data merge block -1935 111 -137 {ExactTeleport:true,ExitPortal:{X:-1739,Y:107,Z:-137}}
# data merge block -1935 111 -136 {ExactTeleport:true,ExitPortal:{X:-1739,Y:107,Z:-137}}

data merge block -1901 112 -88 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":"この看板に向かって"}',Text2:'{"text":"右クリック！","bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル１]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" このワールドには右クリックすることで動作する看板がたくさんあります。\\\\n気になる看板があったら右クリックしてみてください。\\"}]"}}',Text3:'{"text":"SHIFTは押さないでね。"}',Text4:'{"text":"","clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[0] set value 1"}}'}

data merge block -1905 113 -84 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル２]\\\\n\\",\\"bold\\":true},{\\"text\\":\\"8\\\\n7\\\\n6\\\\n5\\\\n4\\\\n3\\\\n2\\\\n1\\\\nログ表示エリアが低すぎたりしませんか？\\\\n上の数字で少なくとも５までは見えるとグッド！\\\\n高さは設定→チャット設定で変更できます。\\"}]"},"text":"チャットログ"}',Text3:'{"text":"その１"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[1] set value 1"},"text":""}'}

data merge block -1907 114 -79 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル３]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" チャットログにカーソルを合わせて情報を見たり、クリックで選択することがあります。\\\\nTキーでチャットログを開き、マウスでカーソルを合わせてみてください。\\\\n\\"},{\\"text\\":\\"ここにカーソル！\\",\\"color\\":\\"dark_aqua\\",\\"bold\\":true,\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"value\\":\\"クリックするとメッセージが出ます！\\"},\\"clickEvent\\":{\\"action\\":\\"run_command\\",\\"value\\":\\"/me はチュートリアル３を読んだ！\\"}}]"},"text":"チャットログ"}',Text3:'{"text":"その２"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[2] set value 1"},"text":""}'}

data merge block -1905 114 -74 {MaxNearbyEntities:0s,RequiredPlayerRange:0s,SpawnCount:0s,SpawnData:{entity:{id:"minecraft:sheep",CustomName:'"jeb_"'}},MaxSpawnDelay:800s,Delay:245s,id:"minecraft:mob_spawner",SpawnRange:0s,MinSpawnDelay: 200s}

data merge block -1905 115 -74 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル４]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" 動物は草ブロックの上にしか湧きません。\\\\n草ブロックは明るくないと伝播しません。\\\\n動物を湧かせるには、明かりと草ブロックが重要です。\\"}]"},"text":"マイクラ基礎知識"}',Text3:'{"clickEvent":{"action":"run_command","value":"/execute positioned ~ ~-1 ~ store result block ~ ~ ~ Delay short 1 if data block ~ ~ ~ {Delay:0s}"},"text":"その１"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[3] set value 1"},"text":""}'}

data merge block -1901 116 -70 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル５]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" 砂利や砂などは支えがないと落ち始めてしまいます。\\\\n落ち始めるとしっかりしたブロックでないと止めることはできませんが、\\\\n落ち始める前ならどんなブロックでも支えることができます。\\\\nこれを利用すると、砂利とツタを使って階段状に足場を作ることも可能です。\\\\nツタのついている場所のすぐ上に設置されるように、砂利を置くのがポイントです。\\"}]"},"text":"マイクラ基礎知識"}',Text3:'{"text":"その２"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[4] set value 1"},"text":""}'}

data merge block -1891 112 -70 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル６]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" この世界ではお肉があまり取れません。食べ物に困ったら、作物や魚をとると良いでしょう。\\\\nまた、羊は羊毛をたくさん落とします。足場に困ったら羊毛を敷き詰めると良いでしょう。\\"}]"},"text":"少し変わった世界"}',Text3:'{"text":"その１"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[5] set value 1"},"text":""}'}

data merge block -1887 113 -74 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル７]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" この世界では難易度がハード固定です。装備をしっかり整えましょう。\\\\nそして、HPの自然回復がありません。回復手段もお忘れなく。\\\\nまた、死んでも満腹になりません。食べ物も十分集めておきましょう。\\\\nなお、透明化はすぐに切れてしまいます。隠れる時はブロックで。\\"}]"},"text":"少し変わった世界"}',Text3:'{"text":"その２"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[6] set value 1"},"text":""}'}

## summon
## scoreboard <= コマンドなにそれ？
## setblock <=
## fill/clone
## entitydata/blockdata

data merge block -1885 114 -79 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル８]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" この世界には様々なスポナーが存在します。\\\\n悪いスポナーは壊しちゃいましょう。良いスポナーは残しちゃいましょう。\\\\nでも、どれが良くてどれが悪いか、その判断はあなた次第です！\\"}]"},"text":"少し変わった世界"}',Text3:'{"text":"その３"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[7] set value 1"},"text":""}'}

data merge block -1887 115 -84 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル９]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" この世界にはエンドポータルフレームの設置された島がいくつかあります。\\\\nそこにエンダーアイを嵌めると、達成率を上げることができます。\\\\n達成率は少しずつ、しかし様々な影響を世界に与えます。\\\\n達成率を上げなくてもクリアはできるので、達成率を上げるかどうかは自由です！\\"}]"},"text":"少し変わった世界"}',Text3:'{"text":"その４"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[8] set value 1"},"text":""}'}

data merge block -1891 116 -88 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル10]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" この世界では時折、空が赤く光ります。\\\\n気を付けてください！ それは何か不思議な事が起こる前触れです！\\\\nしかし、通常世界に居なかった場合、通常世界に戻るまで発生が遅れます。\\\\n通常世界とは、このチュートリアルの後、冒険の始まるエリアの名前です。\\"}]"},"text":"少し変わった世界"}',Text3:'{"text":"その５"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[9] set value 1"},"text":""}'}

data merge block -1901 112 -185 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル11]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" この世界のジョブは良い事づくめ！ 最初に何かジョブに就きましょう。\\\\nジョブに就いた状態でジョブ経験値を貯めていくと、ジョブレベルが上がります。\\\\nジョブレベルが上がると最大HPや最大MPが上昇したり、そのジョブ専用のスキルを覚えることがあります。\\\\nジョブを途中で変える方法もありますが、初めのジョブは慎重に選ぶことをお勧めします。\\"}]"},"text":"職業って？"}',Text3:'{"text":"その１"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[10] set value 1"},"text":""}'}

data merge block -1905 113 -189 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル12]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" ジョブ経験値は、ネザースターを拾うことで貯まっていきます。\\\\n拾った人だけでなく、近くにいたプレイヤー全員にも、同じだけジョブ経験値が入ります。\\\\nただし、死んでいるとジョブ経験値は入りません！ いのちだいじに！\\"}]"},"text":"職業って？"}',Text3:'{"text":"その２"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[11] set value 1"},"text":""}'}

data merge block -1907 114 -194 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル13]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" 各ジョブの最大レベルは50です。ジョブレベルは、Tabキーを押すことでいつでも確認できます。\\\\nレベル50以降でも、レベルアップしてステータスを伸ばせますが、スキルは覚えません。\\\\n転職すると、最大HPや最大MPが引き継がれ、使えるスキルや必要経験値は新しいジョブのものになります。\\\\n転職を上手く利用することも、強くなる秘訣です。\\"}]"},"text":"職業って？"}',Text3:'{"text":"その３"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[12] set value 1"},"text":""}'}

data merge block -1905 115 -199 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル14]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" スキルは覚えただけでは使えません。\\\\nスキルを使うには、スキルをセットしておく必要があります。\\\\nスキルのセットは\\"},{\\"text\\":\\"交易島\\",\\"bold\\":true},{\\"text\\":\\"から行ける\\"},{\\"text\\":\\"スキル設定所\\",\\"bold\\":true},{\\"text\\":\\"で行えます。\\\\nスキルのセット方法や使用方法は、\\"},{\\"text\\":\\"スキル設定所\\",\\"bold\\":true},{\\"text\\":\\"の看板をご覧ください。\\"}]"},"text":"スキルって？"}',Text3:'{"text":"その１"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[13] set value 1"},"text":""}'}

data merge block -1901 116 -203 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル15]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" スキルを使うとMPを消費します。\\\\nMPが足りなかった場合、スキルは発動せず、MPも消費されません。\\\\nMPは時間経過で徐々に回復します。ジョブレベルが高いほど、回復間隔が短くなります。\\\\nまた、エーテルなどのアイテムでMPを回復することもできます。\\"}]"},"text":"スキルって？"}',Text3:'{"text":"その２"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[14] set value 1"},"text":""}'}

data merge block -1891 112 -203 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル16]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" 消費MPは変動することがあります。\\\\nスキルの中には、スニークしながら発動させると消費MPが増える代わりに、\\\\n周囲のプレイヤーにも効果を与えるものがあります。\\\\n消費MPを軽減するスキルの効果があると、消費MPが軽減されます。\\\\nまた、空腹エフェクトがかかった状態では、消費MPが５倍になってしまいます。\\\\nそういった場合、消費MPがいつもとは変わっています。\\"}]"},"text":"スキルって？"}',Text3:'{"text":"その３"}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[15] set value 1"},"text":""}'}

data merge block -1887 113 -199 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル17]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" この世界には、通常世界とは雰囲気の大きく異なるエリアがいくつも存在します。\\\\nそういったエリアでは、それまでの常識が通用するとは限りません！\\\\nこの場所もその一つで、ここではブロックを置いたり壊したりすることができません。\\\\n通常世界より難しいので、十分な準備や工夫が必要となるでしょう。\\"}]"},"text":"特殊なエリア"}',Text3:'{"text":""}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[16] set value 1"},"text":""}'}

data merge block -1887 115 -189 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル18]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" この世界には、ワープクリスタルと呼ばれる転送装置が置かれていることがあります。\\\\nここの手前にあった装置も、その一つです。\\\\n攻略に大変便利な装置ですが、使うには転送先付近で開通装置を起動しておく必要があります。\\\\n開通していないワープクリスタルを見かけたときは、\\\\n転送先になりそうな場所で開通装置を探してみましょう。\\"}]"},"text":"ワープクリスタル"}',Text3:'{"text":""}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[17] set value 1"},"text":""}'}

data merge block -1891 116 -185 {Text1:'{"clickEvent":{"action":"run_command","value":"/function #oh_my_dat:please"},"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[チュートリアル19]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" 難しくてクリアできない！\\\\nそんな時は、観光モードにするのも一つの手です。\\\\n観光モードにすると、死んでもアイテムが散らばらなくなります。\\\\n観光モードの提案は、スキル設定所の看板でいつでも行えます。\\\\n一定時間、誰にも拒否されなければ、観光モードに切り替わります。\\\\nただし、\\"},{\\"text\\":\\"一度観光モードにすると、元に戻すことはできません！\\",\\"bold\\":true}]"},"text":"観光モード"}',Text3:'{"text":""}',Text4:'{"clickEvent":{"action":"run_command","value":"/data modify storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.tutorial[18] set value 1"},"text":""}'}


setblock -1886 116 -187 minecraft:air
setblock -1886 116 -187 minecraft:oak_sign[rotation=6]{Text1:"",Text2:'{"bold":true,"color":"dark_aqua","text":"ワープクリスタル"}',Text3:'{"bold":true,"color":"dark_aqua","text":"右クリックで開通"}',Text4:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/setblock ~ ~ ~ minecraft:redstone_block"},"text":""}'}




## Java 統合版(BE/PE/CE/EE)
## マインクラフトダンジョン

## TUSP

## 影モッドの公式版？
## 公式フォーマットのリソースパック




### 12345679 * 9 = 111111111

### 3:4:5 合計12
### 1オクターブ = 12個
### ド ド# レ レ# ミ ファ ファ# ソ ソ# ラ ラ# シ
### ⇧             ⇧            ⇧
