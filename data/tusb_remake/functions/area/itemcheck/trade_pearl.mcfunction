#> tusb_remake:area/itemcheck/trade_pearl
### 交易島エンパ防止

execute if entity @s[gamemode=!creative,predicate=tusb_remake:area/tradeisland] run summon item ~ ~ ~ {Tags:["Tradecheck"],PickupDelay:0,Item:{id:"minecraft:ender_pearl",Count:1b}}
tellraw @s [{"text":"このエリアでは","color":"#ec024f","bold":true},{"translate":"%1$sを使用できません！","with":[{"text":"エンダーパール","color":"#0bce1e","bold": true}],"color":"#ec024f","bold":true}]
execute as @e[type=ender_pearl,predicate=tusb_remake:area/tradeisland] at @s if data entity @s Owner run playsound minecraft:block.glass.break master @a[sort=nearest,limit=1] ~ ~ ~ 1 0.5 1
execute as @e[type=ender_pearl,predicate=tusb_remake:area/tradeisland] at @s if data entity @s Owner run kill @s
scoreboard players reset @s[scores={UseEnderPearl=1..}] UseEnderPearl
#tellraw @s[nbt={Dimension:"tusb_remake:trade"}] [{"text":"このエリアでは","color":"#ec024f","bold":true},{"translate":"%1$s及び%2$sを使用できません！","with":[{"text":"エンダーパール","color":"#0bce1e","bold": true},{"text":"投擲ポーション","color":"#ff2dbb","bold": true}],"color":"#ec024f","bold":true}]