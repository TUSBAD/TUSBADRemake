#> player:skill/template/001.template/1.init
#
# スキル作成部 ここで内容などを定義する
#
#

# スキルの情報などはここに記入して設定する

# 使用可能な職業 (string)
    data modify storage tusb_remake:skill Temp.Job set value "デバッグ"
# スキルのID (int)
    data modify storage tusb_remake:skill Temp.ID set value 1
# メイン or サポート (string)
    data modify storage tusb_remake:skill Temp.Mode set value "メイン"
# スキルの名前 (TextComponentString)
    data modify storage tusb_remake:skill Temp.Name set value '{"translate":"ざーこ"}'
# スキルの説明文 (TextComponentString[])
    data modify storage tusb_remake:skill Temp.Lore set value ['{"translate":"ざーこ"}','{"translate":"ざーこ"}']
# スキルのトリガー (string)
    data modify storage tusb_remake:skill Temp.Trigger set value "人参棒を使用"
# MP消費量 (int)
    data modify storage tusb_remake:skill Temp.MPCost set value 0
# インターバル (int)
    data modify storage tusb_remake:skill Temp.Interval set value 0
# スキルのレベル上限 (int)
    data modify storage tusb_remake:skill Temp.MaxLevel set value 2
# スキル習得可となるレベル (int[])
    data modify storage tusb_remake:skill Temp.AcquireLevel set value [1,10]
# 必要スキルポイント量 (int[])
    data modify storage tusb_remake:skill Temp.AcquirePoint set value [1,10]
# ダメージ量 (int[])
    data modify storage tusb_remake:skill Temp.Damage set value [10,100]
# 攻撃タイプ 物理 or 魔法 (string)
    data modify storage tusb_remake:skill Temp.AttackType set value "物理"
# 攻撃属性 (string)
    data modify storage tusb_remake:skill Temp.ElementType set value "炎"
# 防御無視 (boolean)
    data modify storage tusb_remake:skill Temp.BypassResist set value true
# Hit属性 (boolean)
    data modify storage tusb_remake:skill Temp.Hit set value true

    # 複数の属性で攻撃する場合のオプション
    # ダメージ量 (int[[]])
        data modify storage tusb_remake:skill Temp.Damage_Sub set value [[10,100]]
    # 攻撃タイプ 物理 or 魔法 (string[])
        data modify storage tusb_remake:skill Temp.AttackType_Sub set value ["物理"]
    # 攻撃属性 (string[])
        data modify storage tusb_remake:skill Temp.ElementType_Sub set value ["炎"]
    # 防御無視 (boolean[])
        data modify storage tusb_remake:skill Temp.BypassResist_Sub set value [true]
    # Hit属性 (boolean[])
        data modify storage tusb_remake:skill Temp.Hit_Sub set value [true]

function player:skill/core/set_data