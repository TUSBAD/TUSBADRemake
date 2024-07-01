#> core:load_once
#
# #load時に一回だけ実行される処理群（追加）
#
#AD二次創作にて追加する処理群はこっちに記入すること
#最終的にこっちに全部移すことになる予定

#> デバッグ用
data modify storage core: debug set value 1b

#> ゲームルール
    execute unless data storage core: {debug:1b} run time set 14000
    function settings:core/gamerule

#> バージョン
    function settings:version/check/

#> 各種Prefixを設定
    data modify storage ad_remake: Prefix.DEBUG set value "§3DEBUG >> §r"
    data modify storage ad_remake: Prefix.TIPS set value "§bTIPS >> §r"
    data modify storage ad_remake: Prefix.SUCCESS set value "§aSUCCESS >> §r"
    data modify storage ad_remake: Prefix.INFO set value "§9INFO >> §r"
    data modify storage ad_remake: Prefix.FAILED set value "§7FAILED >> §r"
    data modify storage ad_remake: Prefix.ERROR set value "§cERROR >> §r"
    data modify storage ad_remake: Prefix.CRIT set value "§4CRITICAL >> §r"
    function settings:effects/too_bad_effects

#> ディメンション設定
    data remove storage area: capture
    data merge storage area: {capture:{skylands:{},rev_skylands:{},tradeisland:{},cloudia:{},underworld:{},gullivers_land:{},table_mountain:{},tocult_colde:{},niflheimr:{},library:{},purgatory:{},end:{},imaginary_space:{},unusual_space:{},another_dimension:{},ancient_field:{}}}
    function settings:core/capture_reset

#> forceload chunks
#一時的にデバッグエリアの10000,10000にマーカー群を配置する
#変更の余地あり
    execute in area:control run forceload add 0 0
    execute in area:control run setblock 2 2 2 shulker_box
    execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00000
    execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00001
    execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00002

#> ステータススコア
    scoreboard objectives add Level dummy {"text":"レベル"}
    scoreboard objectives add Job dummy {"text":"職業"}
    scoreboard objectives add Exp dummy {"text":"経験値"}
    scoreboard objectives add AllExp dummy {"text": "総獲得経験値"}
    scoreboard objectives add HP dummy {"text": "HP","color": "#ff0053","bold": true}
    scoreboard objectives add HPMax dummy {"text":"HP最大値"}
    scoreboard objectives add HPHealing dummy {"text":"HP回復量"}
    scoreboard objectives add MP dummy {"text": "MP","color": "#3ecfff","bold": true}
    scoreboard objectives add MPMax dummy {"text":"MP最大値"}
    scoreboard objectives add MPHealingWait dummy {"text":"MP回復ウェイト"}
    scoreboard objectives add MPAcceleration dummy {"text":"MP回復加速量"}
    scoreboard objectives add MPConsumption dummy {"text":"MP回復量"}
    scoreboard objectives add ElementPyro dummy {"text":"炎属性値"}
    scoreboard objectives add ElementHydro dummy {"text":"水属性値"}
    scoreboard objectives add ElementCryo dummy {"text":"氷属性値"}
    scoreboard objectives add ElementElectro dummy {"text":"雷属性値"}
    scoreboard objectives add ElementAnemo dummy {"text":"風属性値"}
    scoreboard objectives add ElementDendro dummy {"text":"草属性値"}
    scoreboard objectives add ElementLumo dummy {"text":"光属性値"}
    scoreboard objectives add ElementUmbro dummy {"text":"闇属性値"}
    scoreboard objectives add SP dummy {"text":"スキルポイント"}
    scoreboard objectives add ATK dummy {"text":"物理攻撃力"}
    scoreboard objectives add MATK dummy {"text":"魔法攻撃力"}
    scoreboard objectives add DEF dummy {"text":"物理防御力"}
    scoreboard objectives add MDEF dummy {"text":"魔法防御力"}
    scoreboard objectives add LUCK dummy {"text":"幸運"}
    scoreboard objectives add Damage dummy {"text":"ダメージ"}
    scoreboard objectives add StoredDamage dummy {"text":"累積ダメージ"}

### チーム
    team add Friendly {"text":"味方チーム"}
    team modify Friendly friendlyFire false
    team modify Friendly seeFriendlyInvisibles true
    team modify Friendly collisionRule never
    team modify Friendly deathMessageVisibility always
    team modify Friendly nametagVisibility always
    team add NoCollision {"text":"衝突判定なし"}
    team modify NoCollision collisionRule never
    team add Enemy {"text":"敵チーム"}
    team modify Enemy color aqua

#> 変数スコア
    scoreboard objectives add _ dummy {"text":"一時変数 その1"}
    scoreboard objectives add __ dummy {"text":"一時変数 その2"}
    scoreboard objectives add Calc dummy {"text":"計算変数"}
    scoreboard objectives add Ret dummy {"text":"戻り値用一時変数"}

#> リセット必須トリガー
    scoreboard objectives remove FirstJoin

#> トリガー
    scoreboard objectives add FirstJoin minecraft.custom:play_time {"text": "初回ログイン"}
    scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text": "人参棒クリック"}
    scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}
    scoreboard objectives add ChangeSkill trigger {"text":"スキル変更"}
    scoreboard objectives add ChangeJob trigger {"text":"職業変更"}
    scoreboard objectives add SneakFrequency dummy {"text":"スニーク頻度"}
    scoreboard objectives add ChangeSettings trigger {"text":"設定変更"}
    scoreboard objectives add DeathCount minecraft.custom:minecraft.deaths {"text":"死亡回数"}

#> 時間初期化
execute unless score $Hours Count matches 0.. run scoreboard players set $Hours Count 0
execute unless score $Minutes Count matches 0.. run scoreboard players set $Minutes Count 0

#> スキルデータ登録
    function skill:core/set_init

#> 難易度リセット カジュアル
    function core:difficulty/reset
    execute if data storage core: {debug:1b} run function core:difficulty/select/debug