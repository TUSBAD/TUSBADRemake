#> player:tick/mp/mp_regen
#
# #MPの自然回復処理
#
#

#MPregenの値にしたがってMP回復処理
#毎Tick MPregen分だけのMPCountを増やし、MPCountが1000を越えた瞬間にMPが1回復する
scoreboard players operation @s MPCount += @s MPRegen
execute if entity @s[scores={MPCount=1000..}] run function player:tick/mp/mp_regen_do