# Creates all scores required by the datapack

# vs_sneak: This objective tracks the amount of time a player spends sneaking.
# It uses the minecraft.custom:minecraft.sneak_time criterion, 
# which measures the duration of time the player spends in a sneaking state.
scoreboard objectives add vs_sneak minecraft.custom:minecraft.sneak_time

# vs_x: This objective is of type dummy, which means its value can be manually set or modified by commands. 
# It is used to store the X-coordinate value for certain entities or players in the datapack.
scoreboard objectives add vs_x dummy

# vs_z: Similar to the vs_x objective, this objective is also of type dummy and 
# is used to store the Z-coordinate value for entities or players.
scoreboard objectives add vs_z dummy