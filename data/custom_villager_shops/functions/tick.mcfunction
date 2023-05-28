# Controls everything to do with vs

# The schedule command sets up a repeating task that executes the function every tick (1 game tick = 1/20th of a second).
schedule function custom_villager_shops:tick 1t

# The command executes the function custom_villager_shops:get_coords for all players in
# creative mode who have a vs_sneak score of 1 or higher. 
# It runs the function at the player's location.
execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run function custom_villager_shops:get_coords

# the command executes the function custom_villager_shops:create_shop if there is 
# a nearby (within 3 blocks) villager with no profession (minecraft:none) and if there is 
# a chest at the same location as the executing entity (player). 
# This is executed for players in creative mode who have a vs_sneak score of 1 or higher.
execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:none"}},distance=..3,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chest run function custom_villager_shops:create_shop

# the executes the function custom_villager_shops:create_shop if there is 
# a nearby (within 3 blocks) villager with the tag vs_villager and if there is 
# a chest at the same location as the executing entity (player). 
# This is also executed for players in creative mode who have a vs_sneak score of 1 or higher.
execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run execute as @e[type=villager,tag=vs_villager,distance=..3,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chest run function custom_villager_shops:create_shop

# the command resets the vs_sneak score to 0 for all players who have a vs_sneak score of 1 or higher. 
# This effectively resets the condition for executing the above commands in the next tick.
scoreboard players set @a[scores={vs_sneak=1..}] vs_sneak 0