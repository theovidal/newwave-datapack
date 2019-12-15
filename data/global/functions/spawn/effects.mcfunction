effect give @a[x=-110,y=50,z=113,dx=220,dy=100,dz=-230] minecraft:saturation 1 25 true
effect give @a[x=-110,y=50,z=113,dx=220,dy=100,dz=-230] minecraft:instant_health 1 5 true

bossbar set minecraft:welcome_to_newwave players @a[x=-110,y=50,z=113,dx=220,dy=100,dz=-230]
bossbar set minecraft:test_the_without_plugins players @a[x=-110,y=50,z=113,dx=220,dy=100,dz=-230]

execute as @e[type=minecraft:armor_stand,tag=kick_not_admin] run tp @a[team=!admin,distance=2] 0 80 0