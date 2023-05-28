# Removes all scores required by the datapack

# schedule clear custom_villager_shops:tick removes the scheduled task associated with 
# the custom_villager_shops:tick function. 
# This stops the function from being executed automatically.
schedule clear custom_villager_shops:tick

#scoreboard objectives remove vs_sneak removes the vs_sneak objective from the scoreboard, 
#effectively deleting the score and any related data.
scoreboard objectives remove vs_sneak