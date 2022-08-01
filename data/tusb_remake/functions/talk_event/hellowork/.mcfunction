#> tusb_remake:talk_event/hellowork/
# ハロワに話しかけた時
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

execute as @e[distance=..8,type=minecraft:villager,name="ハローワーク",nbt={Offers:{Recipes:[{sell:{tag:{display:{Name:'{"text":"§r§lジョブ変更申請書"}'}}}}]}}] run data modify entity @s Offers.Recipes set value [{maxUses: 2147483647, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'},JobApply:true}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange:true,Job:1, display: {Lore: ['{"text":"§r§b黄金の鉄の塊"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l剣士変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'},JobApply:true}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange:true,Job:2, display: {Lore: ['{"text":"§r§aｱｲｴｴｴ!"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l忍者変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'},JobApply:true}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange:true,Job:3, display: {Lore: ['{"text":"§r§cきゅっきゅっきゅっニャー"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l狩人変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'},JobApply:true}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange:true,Job:4, display: {Lore: ['{"text":"§r§fほーーーーりーーーー！"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l白魔導士変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'},JobApply:true}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange:true,Job:5, display: {Lore: ['{"text":"§r§8使いますよ？イオナズン"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l黒魔導士変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buy: {id: "minecraft:paper", Count: 1b, tag: {display: {Name: '{"text":"§r§lジョブ変更申請書"}'},JobApply:true}}, sell: {id: "minecraft:paper", Count: 1b, tag: {RepairCost: 1000000000, JobChange:true,Job:6, display: {Lore: ['{"text":"§r§e僕と契約して召喚士になってよ"}', '{"text":"§r§nUSB職業安定所発行"}'], Name: '{"text":"§r§l召喚士変更許可証"}'}, Enchantments: []}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buy: {id: "minecraft:white_wool", Count: 16b}, sell: {id: "minecraft:paper", Count: 1b, tag: {display: {Lore: ['{"text":"§7転職したいのですか？"}', '{"text":"§7いずれまた何らかの形で"}', '{"text":"§7ここを訪れれば"}', '{"text":"§7申請書を差し上げましょう。"}'], Name: '{"text":"§r§lジョブ変更申請書"}'},JobApply:true}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]

tellraw @s {"translate":"[ハローワーク] なりたい職業の取引を選んで、紙を渡してくれ。"}
