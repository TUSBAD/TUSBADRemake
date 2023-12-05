#> skill:core/set_init
#
# スキルストレージデータの設定 開始処理
#
#

# 初期化
    data remove storage ad_skill: Data
    data remove storage ad_skill: Temp

# デバッグ用
    function #player:skill_init/template

# 通常職業用
    function #player:skill_init/assasin
    function #player:skill_init/berserker
    function #player:skill_init/gunner
    function #player:skill_init/lancer
    function #player:skill_init/priest
    function #player:skill_init/reaper
    function #player:skill_init/sniper
    function #player:skill_init/sorcerer
    function #player:skill_init/warrior

# 共通スキル
    function #player:skill_init/common