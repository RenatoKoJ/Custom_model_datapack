# These commands perform conditional checks based on the values of vs_x and vs_z scores. 
# Depending on the conditions met, they modify the entity's data to set its rotation and disable AI. 

# If the entity's vs_x score is 0, <= -1, >=1, 0 
# and its vs_z score is <= -1, 0, 0, >=1,
# the entity's data is modified to have a rotation of [0.0f], [-90.0f], [90.0f], [180.0f] 
# and NoAI tag set to 1b (true).
execute if score @s vs_x matches =0 if score @s vs_z matches ..-1 run data merge entity @s {Rotation:[0.0f],NoAI:1b}
execute if score @s vs_x matches ..-1 if score @s vs_z matches =0 run data merge entity @s {Rotation:[-90.0f],NoAI:1b}
execute if score @s vs_x matches 1.. if score @s vs_z matches =0 run data merge entity @s {Rotation:[90.0f],NoAI:1b}
execute if score @s vs_x matches =0 if score @s vs_z matches 1.. run data merge entity @s {Rotation:[180.0f],NoAI:1b}

# If the entity's vs_x score is >=1, <= -1, >=1, <=-1 
# and its vs_z score is <= -1, <= -1, >=1, >=1,
# the entity's data is modified to have a rotation of [45.0f], [-45.0f], [135.0f], [-135.0f] 
# and NoAI tag set to 1b (true).
execute if score @s vs_x matches 1.. if score @s vs_z matches ..-1 run data merge entity @s {Rotation:[45.0f],NoAI:1b}
execute if score @s vs_x matches ..-1 if score @s vs_z matches ..-1 run data merge entity @s {Rotation:[-45.0f],NoAI:1b}
execute if score @s vs_x matches 1.. if score @s vs_z matches 1.. run data merge entity @s {Rotation:[135.0f],NoAI:1b}
execute if score @s vs_x matches ..-1 if score @s vs_z matches 1.. run data merge entity @s {Rotation:[-135.0f],NoAI:1b}

# Lastly, the command tellraw is used to display the values of vs_x and vs_z scores to all players. 
# It shows the X and Z values by using the score component to retrieve
#  the scores for the executing entity (@s) with the specified objectives. 
# The result is displayed in a JSON-formatted message.
# tellraw @a ["X:",{"score":{"name":"@s","objective":"vs_x"}}," Z:",{"score":{"name":"@s","objective":"vs_z"}}]