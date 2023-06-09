# Desc: Checks for mobs with specific name and silences them
#
# Called by: #minecraft:load

execute as @e[name="silence me"] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="Silence me"] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="silence_me"] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}
execute as @e[name="Silence Me"] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:1b,ActiveEffects:[{Id:24,Duration:5,ShowParticles:0b}]}

# plays sound
execute at @s run playsound minecraft:block.anvil.use player @s ~ ~ ~ 0.4 0.6

schedule function silence_mobs:second 1s