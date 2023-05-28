# Desc: Checks for mobs with specific name and changes them
#
# Called by: #minecraft:load


# The code uses the execute as @e[name="..."] command to target entities with specific names. 
# In this case, it targets entities with names like "miniblock," "Miniblock," "MiniBlock," and variations thereof.
# For each targeted entity, the data merge entity command is used to modify their data. 
# The CustomName tag is set to display the name "Artisan." 
# The Silent tag is set to 1, making the entity silent, 
# and the ActiveEffects tag applies a visual effect (in this case, the effect with ID 24) for a duration of 5 ticks with no particle display.
execute as @e[name="miniblock"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="Miniblock"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="MiniBlock"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="mini block"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="Mini block"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="Mini Block"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="mini_block"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="Mini_block"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="Mini_Block"] run data merge entity @s {CustomName:"{\"text\":\"Artisan\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}

# After modifying the entities, the playsound command is used to play 
# the "minecraft:block.anvil.use" sound at the location of the executing entity (@s). 
# The sound has a volume of 0.4 and a pitch of 0.6.
execute at @s run playsound minecraft:block.anvil.use player @s ~ ~ ~ 0.4 0.6

# Finally, the schedule command is used to 
# schedule the execution of the custom_villager_shop:second function every second (1s).
schedule function custom_villager_shop:second 1s