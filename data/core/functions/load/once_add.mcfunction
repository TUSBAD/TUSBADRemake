#> core:load/once_add
#
# #load時に一回だけ実行される処理群（追加）
#
#
#AD二次創作にて追加する処理群はこっちに記入すること

#> ADのverを設定
    data modify storage tusb_remake: mapversion set value 1.0.0

#> 各種Prefixを設定
    data modify storage tusb_remake: Prefix.DEBUG set value "§3DEBUG >> §r"
    data modify storage tusb_remake: Prefix.TIPS set value "§bTIPS >> §r"
    data modify storage tusb_remake: Prefix.SUCCESS set value "§aSUCCESS >> §r"
    data modify storage tusb_remake: Prefix.FAILED set value "§cFAILED >> §r"
    data modify storage tusb_remake: Prefix.ERROR set value "§cERROR >> §r"
    data modify storage tusb_remake: Prefix.CRIT set value "§4CRITICAL >> §r"
    function tusb_remake:load/bad_effect_message

#> forceload chunks
#一時的にデバッグエリアの10000,10000にマーカー群を配置する
#変更の余地あり
    execute in tusb_remake:test run forceload add 10001 10001
    execute in tusb_remake:test run setblock 10002 2 10002 shulker_box
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00000
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00001
    execute in tusb_remake:test positioned 10005 5 10005 run function calc:system_marker/tp_00002

#> ステータススコア
    scoreboard objectives add Level dummy {"text":"レベル"}
    scoreboard objectives add Job dummy {"text":"職業"}
    scoreboard objectives add Exp dummy {"text":"経験値"}
    scoreboard objectives add AllExp dummy {"text": "総獲得経験値"}
    scoreboard objectives add HP dummy {"text":"HP"}
    scoreboard objectives add HPMax dummy {"text":"HP最大値"}
    scoreboard objectives add HPHealing dummy {"text":"HP回復量"}
    scoreboard objectives add MP dummy {"text": "MP","color": "#3ecfff","bold": true}
    scoreboard objectives add MPMax dummy {"text":"MP最大値"}
    scoreboard objectives add MPRegen dummy {"text":"MP回復量"}
    scoreboard objectives add MPCount dummy {"text":"MP回復カウント"}
    scoreboard objectives add ElementFire dummy {"text":"炎属性値"}
    scoreboard objectives add ElementWater dummy {"text":"水属性値"}
    scoreboard objectives add ElementIce dummy {"text":"氷属性値"}
    scoreboard objectives add ElementThunder dummy {"text":"雷属性値"}
    scoreboard objectives add ElementWind dummy {"text":"風属性値"}
    scoreboard objectives add ElementDendro dummy {"text":"草属性値"}
    scoreboard objectives add ElementLight dummy {"text":"光属性値"}
    scoreboard objectives add ElementDark dummy {"text":"闇属性値"}
    scoreboard objectives add SP dummy {"text":"スキルポイント"}
    scoreboard objectives add ATK dummy {"text":"物理攻撃力"}
    scoreboard objectives add MATK dummy {"text":"魔法攻撃力"}
    scoreboard objectives add DEF dummy {"text":"物理防御力"}
    scoreboard objectives add MDEF dummy {"text":"魔法防御力"}
    scoreboard objectives add LUCK dummy {"text":"運"}
    scoreboard objectives add Damage dummy {"text":"ダメージ"}
    scoreboard objectives add StoredDamage dummy {"text":"累積ダメージ"}

#> 変数スコア
    scoreboard objectives add _ dummy {"text":"一時変数 その1"}
    scoreboard objectives add __ dummy {"text":"一時変数 その2"}
    scoreboard objectives add Calc dummy {"text":"計算変数"}

#> リセット必須トリガー
    scoreboard objectives remove FirstJoin

#> トリガー
### tusb_remake側と重複があるので完成後remake側を削除したほうがよさそう。
    scoreboard objectives add FirstJoin minecraft.custom:play_time {"text": "初回ログイン"}
    scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text": "人参棒クリック"}
    scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}

#> スキルデータ登録
    function player:skill/core/set_init