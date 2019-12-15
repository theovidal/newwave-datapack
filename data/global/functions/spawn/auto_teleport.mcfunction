scoreboard players enable @a spawn

scoreboard players set @a[scores={iSpawn=1..}] spawn 1
scoreboard players reset @a[scores={iSpawn=1..}] iSpawn

clear @a[scores={spawn=1..}]
gamemode adventure @a[scores={spawn=1..}]
tp @a[scores={spawn=1..}] 0 80 0
spawnpoint @a[scores={spawn=1..}] 0 80 0
scoreboard players reset @a[scores={spawn=1..}] spawn