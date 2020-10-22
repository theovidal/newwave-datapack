execute at @e[type=armor_stand,tag=pads.spawn] run scoreboard players set @a[distance=..1] spawn 1
execute at @e[type=armor_stand,tag=pads.speed] run effect give @a[distance=..1] speed 3 7 true

execute at @e[type=armor_stand,tag=pads.launchpad] run execute unless entity @a[scores={on_launchpad=1}] if entity @a[distance=..0.8] run summon armor_stand ~ ~ ~ {Tags:["pads.launchpad.guide"],Invisible:1b,NoAI:1b}

execute at @e[type=armor_stand,tag=pads.launchpad.guide] run scoreboard players set @p on_launchpad 1
execute at @e[type=armor_stand,tag=pads.launchpad.guide] run tp @p ~ ~ ~
execute at @e[type=armor_stand,tag=pads.launchpad.guide] run particle minecraft:instant_effect ~0.2 ~0.1 ~0.2 -0.2 -0.1 0.2 1 15
execute at @e[type=armor_stand,tag=pads.launchpad.guide] run effect give @p minecraft:resistance 1 100 true

execute at @e[type=armor_stand,tag=pads.launchpad.guide,nbt={OnGround:1b}] run scoreboard players reset @a[distance=..0.3] on_launchpad
kill @e[type=armor_stand,tag=pads.launchpad.guide,nbt={OnGround:1b}]