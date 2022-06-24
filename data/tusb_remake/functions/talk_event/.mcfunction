#> tusb_remake:talk_event/
# 村人との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 村人と話したとき、近くのアイテムを渡してくれる
tp @e[distance=..5,type=minecraft:item,tag=!SystemEntity] @s

## 農業家
execute if entity @s[advancements={tusb_remake:talk_event={farmer=true}}] run say 農業家に話しかけたよ
## エージェント
execute if entity @s[advancements={tusb_remake:talk_event={agent=true}}] run function tusb_remake:talk_event/agent/
## 牧師
execute if entity @s[advancements={tusb_remake:talk_event={pastor=true}}] run function tusb_remake:talk_event/pastor/
## 占い師 Augur 卜占官、予言者
execute if entity @s[advancements={tusb_remake:talk_event={augur=true}}] run function tusb_remake:talk_event/augur/

advancement revoke @s only tusb_remake:talk_event

### 牧師と話しているとき

### 占い師

## 
# tellraw @a[tag=TalkToAugur] {"translate":"[占い師] 占いの館へようこそ。エメラルド%1$s個であなたの運勢を占います。\n占いますか？ %2$s","with":[{"text":"１","color":"green","bold":true},{"text":"はい","color":"aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger AugurFlag set 1"}}]}	 
# scoreboard players enable @a[tag=TalkToAugur] AugurFlag	条件付き
# scoreboard players tag @a[tag=TalkToAugur] remove TalkToAugur	条件付き
