#> tusb_remake:area/move/give_trialset
# お試しセットを渡します
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### お試しセットを渡す
give @s minecraft:ghast_spawn_egg{display:{Name:'"§bお試しセットの印玉"',Lore:['"§rモードスキル用お試しセットが入っている。"','"§rなくなったら交易島のアルバイトから買おう。"']},ench:[],EntityTag:{id:"minecraft:bat",DeathTime:19s,ActiveEffects:[{Id:7b,Duration:100,Amplifier:5b,ShowParticles:false},{Id:14b,Duration:100,Amplifier:0b,ShowParticles:false}],Tags:[RewardEgg,TypeChecked],DeathLootTable:"usb:signs/skillkit"},CanPlaceOn:["#minecraft:all"],HideFlags:16}
tellraw @s {"translate":"* %1$s を受け取った。","with":[{"text":"お試しセットの印玉","color":"aqua"}]}
tag @s remove TrialSet
