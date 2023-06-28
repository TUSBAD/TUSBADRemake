#Y0～255に収まるよう3通りに分岐
execute as @a[tag=InteractEnchant,predicate=player:interact_location] at @s run function item:enchanting_table/
tag @a[tag=InteractEnchant] remove InteractEnchant
