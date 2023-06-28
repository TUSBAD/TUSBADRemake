#Y0～255に収まるよう3通りに分岐
execute as @a[tag=InteractAnvil,predicate=player:interact_location] at @s run function item:anvil/
tag @a[tag=InteractAnvil] remove InteractAnvil
