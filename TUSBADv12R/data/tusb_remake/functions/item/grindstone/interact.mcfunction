#砥石をコマブロに置換してUI無効化する
#1tick遅らせる
playsound block.anvil.land master @s ~ ~ ~ 0.5 1.414 1
schedule function tusb_remake:item/grindstone/schedule 1t
tag @s add InteractGrindstone
#トリガー解除
advancement revoke @s only tusb_remake:interact/grindstone
