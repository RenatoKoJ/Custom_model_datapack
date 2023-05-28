# Gets the coords of the entity
 
# This line retrieves the X-coordinate of the executing entity (@s) using the data get command. 
# The result is stored in the vs_x score.
execute store result score @s vs_x run data get entity @s Pos[0]

# This line retrieves the Z-coordinate of the executing entity (@s) using the data get command. 
# The result is stored in the vs_z score.
execute store result score @s vs_z run data get entity @s Pos[2]