#Y0～255に収まるよう3通りに分岐
execute as @a[tag=InteractGrindstone,predicate=player:interact_location] at @s run function item:grindstone/
tag @a[tag=InteractGrindstone] remove InteractGrindstone
