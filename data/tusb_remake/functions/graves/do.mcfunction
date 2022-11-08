summon armor_stand ~ ~-1.4 ~ {Marker:true,Invisible:true,Tags:["s_grave_ae","s_grave_ae_wip"],Glowing:true,Team:"players"}
execute positioned ~ ~-1.4 ~ run loot replace entity @e[type=armor_stand,distance=...1,tag=s_grave_ae_wip] armor.head loot usb:entities/playerhead
execute positioned ~ ~-1.4 ~ run tag @e[type=armor_stand,distance=...1,tag=s_grave_ae_wip] remove s_grave_ae_wip