#> tusb_remake:skill/init_table/summoner
## スキルテーブルを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 召喚士
data modify storage tusb_remake: _.0 set value {name:["サモンP：スノー"],level:[5],cost:25,description:[["スノーゴーレム(ペット)を召喚する。","HP：✮✮✮✩✩","攻：✩✩✩✩✩","防：✮✮✩✩✩","特性：爆発耐性","支援：採掘速度上昇"]]}
data modify storage tusb_remake: _.2 set value {name:["ヘイカモンα","ヘイカモンβ"],level:[13,33],cost:10,description:[["周囲のペットを５体まで引き寄せる。"],["周囲のペットを10体まで引き寄せる。"]],range:15,sneak:{description:[["周囲のプレイヤーも１人まで引き寄せる。"],["周囲のプレイヤーも２人まで引き寄せる。"]],range:15}}

data modify storage tusb_remake: _.1 set value {name:["サモンＥ：マーチャント"],level:[10],cost:1,description:[["てすと","てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.3 set value {name:["サモンＥ：スーパードラゴン"],level:[17],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.4 set value {name:["サモンＰ：ウルフ"],level:[25],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.5 set value {name:["サモンＥ：ヒーリングキャット"],level:[30],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.6 set value {name:["サモンＰ：ゴーレム"],level:[45],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.7 set value {name:["サモンＥ：バルーン"],level:[46],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.8 set value {name:["サモンＥ：グライダー"],level:[49],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}

data modify storage tusb_remake: _.20 set value {name:["フィールα","フィールβ","フィールγ"],level:[1,20,40],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.21 set value {name:["金タライ"],level:[3],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.22 set value {name:["ディールα","ディールβ","ディールγ"],level:[8,28,48],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.23 set value {name:["ぽんぽんα","ぽんぽんβ"],level:[15,35],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.24 set value {name:["つんつんα","つんつんβ"],level:[18,38],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.25 set value {name:["あつあつタライ"],level:[23],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.26 set value {name:["サモンB：オブシディアン"],level:[26],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.27 set value {name:["ぽむぽむハナビ"],level:[37],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.28 set value {name:["サモンB：エンダーチェスト"],level:[39],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.29 set value {name:["きらきらタライ"],level:[43],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.30 set value {name:["サモン：ぷちブラック"],level:[50],cost:100,description:[["てすと"]],range:"なし",duration:"なし"}

data modify storage tusb_remake: skill_table.summoner set from storage tusb_remake: _
data remove storage tusb_remake: _
