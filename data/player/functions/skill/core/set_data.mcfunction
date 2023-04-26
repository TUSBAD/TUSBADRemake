#> player:skill/core/set_data
#
# スキルストレージデータの設定
#
#

##デバッグ用
# ストレージ検証 (Error Check)
    execute unless data storage tusb_remake:skill Temp.Job run tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.ERROR"},{"translate":"引数が足りません ","color":"white"},{"translate":"Job","color":"red"}]
    execute unless data storage tusb_remake:skill Temp.ID run tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.ERROR"},{"translate":"引数が足りません ","color":"white"},{"translate":"ID","color":"red"}]
    execute unless data storage tusb_remake:skill Temp.Mode run tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.ERROR"},{"translate":"引数が足りません ","color":"white"},{"translate":"Mode","color":"red"}]
    execute unless data storage tusb_remake:skill Temp.Name run tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.ERROR"},{"translate":"引数が足りません ","color":"white"},{"translate":"Name","color":"red"}]
    execute unless data storage tusb_remake:skill Temp.MPCost run tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.ERROR"},{"translate":"引数が足りません ","color":"white"},{"translate":"MPCost","color":"red"}]
    execute unless data storage tusb_remake:skill Temp.Interval run tellraw @a [{"storage":"tusb_remake:","nbt":"Prefix.ERROR"},{"translate":"引数が足りません ","color":"white"},{"translate":"Interval","color":"red"}]
##ジョブストレージ格納
# デバッグ用職業
    execute if data storage tusb_remake:skill {Temp:{Job:"デバッグ"}} run data modify storage tusb_remake:skill Data."デバッグスキル" append from storage tusb_remake:skill Temp
# 通常職業
    execute if data storage tusb_remake:skill {Temp:{Job:"ウォーリアー"}} run data modify storage tusb_remake:skill Data."ウォーリアースキル" append from storage tusb_remake:skill Temp
    execute if data storage tusb_remake:skill {Temp:{Job:"アサシン"}} run data modify storage tusb_remake:skill Data."アサシンスキル" append from storage tusb_remake:skill Temp
    execute if data storage tusb_remake:skill {Temp:{Job:"バーサーカー"}} run data modify storage tusb_remake:skill Data."バーサーカースキル" append from storage tusb_remake:skill Temp
    execute if data storage tusb_remake:skill {Temp:{Job:"ランサー"}} run data modify storage tusb_remake:skill Data."ランサースキル" append from storage tusb_remake:skill Temp
    execute if data storage tusb_remake:skill {Temp:{Job:"スナイパー"}} run data modify storage tusb_remake:skill Data."スナイパースキル" append from storage tusb_remake:skill Temp
    execute if data storage tusb_remake:skill {Temp:{Job:"ガンナー"}} run data modify storage tusb_remake:skill Data."ガンナースキル" append from storage tusb_remake:skill Temp
    execute if data storage tusb_remake:skill {Temp:{Job:"プリースト"}} run data modify storage tusb_remake:skill Data."プリーストスキル" append from storage tusb_remake:skill Temp
    execute if data storage tusb_remake:skill {Temp:{Job:"ソーサラー"}} run data modify storage tusb_remake:skill Data."ソーサラースキル" append from storage tusb_remake:skill Temp
    execute if data storage tusb_remake:skill {Temp:{Job:"リーパー"}} run data modify storage tusb_remake:skill Data."リーパースキル" append from storage tusb_remake:skill Temp
# 共通スキル
    execute if data storage tusb_remake:skill {Temp:{Job:"共通"}} run data modify storage tusb_remake:skill Data."共通スキル" append from storage tusb_remake:skill Temp

# リセット
    data remove storage tusb_remake:skill Temp