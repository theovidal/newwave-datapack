clear @a[distance=..1]
replaceitem entity @a[distance=..1] armor.head minecraft:iron_helmet
replaceitem entity @a[distance=..1] armor.chest minecraft:iron_chestplate
replaceitem entity @a[distance=..1] armor.legs minecraft:iron_leggings
replaceitem entity @a[distance=..1] armor.feet minecraft:iron_boots
replaceitem entity @a[distance=..1] hotbar.0 minecraft:diamond_sword
replaceitem entity @a[distance=..1] weapon.offhand minecraft:shield
replaceitem entity @a[distance=..1] hotbar.1 minecraft:cooked_beef 10
effect give @a[distance=..1] minecraft:resistance 5 255
effect give @a[distance=..1] minecraft:weakness 5 255
scoreboard players set @a[distance=..1] ffa.kitChoosed 1