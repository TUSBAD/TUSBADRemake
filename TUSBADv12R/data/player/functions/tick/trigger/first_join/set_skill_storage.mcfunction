#> player:tick/trigger/first_join/set_skill_storage
#
# プレイヤーが覚えたスキルを確認するためのストレージを生成する
#
#
# 256枠のストレージを作る。場合によっては減らす。
# 一気に作るのはだるいので小分けにしてストレージ作成

# ループ処理の初期設定
    scoreboard players set _ _ 0
    data modify storage tusb_remake_skill: _A set value [{L:0},{L:0},{L:0},{L:0}]
# ループ処理
    function player:tick/trigger/first_join/set_skill_storage_loop
# oh_my_datストレージに格納
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."ウォーリアースキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."アサシンスキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."バーサーカースキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."ランサースキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."スナイパースキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."ガンナースキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."プリーストスキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."ソーサラースキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."リーパースキル" set from storage tusb_remake_skill: _A
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."共通スキル" set from storage tusb_remake_skill: _A
# デバッグ用
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LearnSkill."デバッグスキル" set from storage tusb_remake_skill: _A
# ストレージはリセットせずにあえて残しておく