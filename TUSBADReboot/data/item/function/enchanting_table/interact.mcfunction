#エンチャントテーブルをコマブロに置換してUI無効化する
#1tick遅らせる
playsound block.anvil.land master @s ~ ~ ~ 0.5 1.414 1
schedule function item:enchanting_table/schedule 1t
tag @s add InteractEnchant
#トリガー解除
advancement revoke @s only item:interact/enchanting_table
