#> settings:effects/too_bad_effects
#
#> 特殊デバフの名前と説明の初期設定
#
#@within function core:load/once_add

#> 特殊デバフの名前を使用するとき。
#
#
# 使用例
# {"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Doom"}
#

data modify storage effects: BadEffectsName.Doom set value '{"translate":"死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"一定時間経過後、死亡する。","color":"white"}},"color":"#d159ff"}'
data modify storage effects: BadEffectsName.DoomEX set value '{"translate":"致死の宣告","hoverEvent":{"action":"show_text","value":{"translate":"解除するまで、ダメージを受け続ける。","color":"white"}},"color":"#d309ff"}'
