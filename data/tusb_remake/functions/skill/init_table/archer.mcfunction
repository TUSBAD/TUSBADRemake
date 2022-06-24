#> tusb_remake:skill/init_table/archer
## スキルテーブルを設定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 狩人
#狩人サポート
data modify storage tusb_remake: _.0 set value {name:["ルカナントラップ","ルカナントラップⅡ","ルカナントラップⅢ"],level:[3,23,43],cost:1,description:[["てすと"]],range:"なし",duration:60,sneak:{description:[["てすと"]],range:15}}
data modify storage tusb_remake: _.1 set value {name:["照明弾"],level:[5],cost:1,description:"",range:"なし",duration:"なし"}
data modify storage tusb_remake: _.2 set value {name:["ボミオストラップ","ボミオストラップⅡ","ボミオストラップⅢ"],level:[13,33],cost:1,description:[["てすと"]],range:"なし",duration:"なし",sneak:{description:[["てすと"]],range:15}}
data modify storage tusb_remake: _.3 set value {name:["ワイルドクッキング"],level:[15],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.4 set value {name:["エンチェイス","エンチェイスⅡ"],level:[17,37],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.5 set value {name:["レーダーヴィジョン","レーダーヴィジョンⅡ"],level:[18,38],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.6 set value {name:["エナジーセーブ"],level:[35],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.7 set value {name:["ニフラムトラップ"],level:[46],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}

data modify storage tusb_remake: _.20 set value {name:["ステークスファイア","ステークスファイアⅡ","ステークスファイアⅢ"],level:[1,20,40],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.21 set value {name:["チェインアロー","チェインアローⅡ","チェインアローⅢ"],level:[8,28,48],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.22 set value {name:["ワイルドヒーリング","ワイルドヒーリング+"],level:[10,30],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.23 set value {name:["ブラストショット","ブラストショットⅡ"],level:[25,45],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.24 set value {name:["バードストライク"],level:[26],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.25 set value {name:["ガストキャノン","ガストキャノンⅡ"],level:[39,48],cost:1,description:[["てすと"]],range:"なし",duration:"なし"}
data modify storage tusb_remake: _.26 set value {name:["フェイタルショット"],level:[50],cost:100,description:[["てすと"]],range:"なし",duration:"なし"}

data modify storage tusb_remake: skill_table.archer set from storage tusb_remake: _
data remove storage tusb_remake: _
