# Changes the line scoreboard players operation @s math_input2 -= @s math_input1 to 
# subtract the value of math_input1 from math_input2 and then adds 1 to math_input2. 
# This effectively changes the range of the random number generation.
#Change (lower, upper) to (lower, range)
scoreboard players operation @s math_input2 -= @s math_input1
scoreboard players add @s math_input2 1

# Summons two area_effect_cloud entities with custom names "math_random_kcjbc" and a duration of 10. 
# These entities will be used for random number generation.
#Summon two entities to work with
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"math_random_kcjbc\"}",Duration:10,Particle:"underwater"}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"math_random_kcjbc\"}",Duration:10,Particle:"underwater"}

# Generates a 31-bit random number by randomizing each bit. 
# Each area_effect_cloud entity adds a specific value to math_input1 based on its distance and sort order.
#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 1
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 2
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 4
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 8
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 16
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 32
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 64
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 128
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 256
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 512
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 1024
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 2048
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 4096
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 8192
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 16384
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 32768
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 65536
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 131072
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 262144
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 524288
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 1048576
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 2097152
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 4194304
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 8388608
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 16777216
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 33554432
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 67108864
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 134217728
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 268435456
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 536870912
scoreboard players add @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,sort=random,limit=1] math_input1 1073741824

# Transfers the random number to wt_tradeIndex by setting it equal to 
# the math_input1 value of the randomly selected area_effect_cloud entity. 
# It then performs modulo operation with math_input2 to limit the random number within the desired range. 
# Finally, it adds the math_input1 value back to the result.
#Transfer random number and limit to given range
scoreboard players operation @s wt_tradeIndex = @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1,limit=1] math_input1
scoreboard players operation @s wt_tradeIndex %= @s math_input2
scoreboard players operation @s wt_tradeIndex += @s math_input1

# Restores the value of math_input2 by adding math_input1 to it and then subtracting 1.
#Restore input2
scoreboard players operation @s math_input2 += @s math_input1
scoreboard players remove @s math_input2 1

# Kills the area_effect_cloud entities with the custom name "math_random_kcjbc".
kill @e[type=area_effect_cloud,name="math_random_kcjbc",distance=..1]

# Resets the math_input1 and math_input2 scores for all players.
#scoreboard players reset * wt_tradeIndex
scoreboard players reset * math_input1
scoreboard players reset * math_input2