# Desc: All commands here run every tick
#
# Called by: main:tick


# The command schedule function wandering_trades:tick 1t scheduled at 
# the beginning ensures that the "wandering_trades:tick" function is executed every tick. 
# This guarantees that the code within that function is executed regularly.
schedule function wandering_trades:tick 1t

# The command is executed for each entity of type "wandering_trader" that does not have the tag "trade_items_spawned". 
# It executes the function "wandering_trades:setup_trade_index_items" to set up the trade index items.
execute as @e[type=minecraft:wandering_trader,tag=!trade_items_spawned] at @s run function wandering_trades:setup_trade_index_items

# The next commands deal with block trades. 
# They are executed only for entities of type "wandering_trader" that do not have the tag "has_new_block_trades".
# 1 - It sets the value 15 to the "math_input1" scoreboard of the wandering trader.
# 2 - It sets the value 21 to the "math_input2" scoreboard of the wandering trader.
# 3 - It executes the function "wandering_trades:math/random" to generate random values based on the "math_input1" and "math_input2" scoreboards.
# 4 - It executes the function "wandering_trades:provide_block_trades" to provide block trades to the wandering trader.
# Amount of block trades
execute as @e[type=minecraft:wandering_trader,tag=!has_new_block_trades] at @s run scoreboard players set @s math_input1 15
execute as @e[type=minecraft:wandering_trader,tag=!has_new_block_trades] at @s run scoreboard players set @s math_input2 21
execute as @e[type=minecraft:wandering_trader,tag=!has_new_block_trades] at @s run function wandering_trades:math/random
execute as @e[type=minecraft:wandering_trader,tag=!has_new_block_trades] at @s run function wandering_trades:provide_block_trades



# The command grants the Slowness effect with a duration of 255 ticks (maximum time) to all entities of type "wandering_trader" that do not have the tag "has_new_trades". 
# This is likely used to indicate that these entities are currently occupied with new trades..
effect give @e[type=minecraft:wandering_trader,tag=!has_new_trades] minecraft:slowness 1 255 true

# Finally, the command is executed for all entities of type "wandering_trader" that have the tag "has_new_trades". 
# It kills the items of type "trade_index_item" that are near the wandering trader.
execute as @e[type=minecraft:wandering_trader,tag=has_new_trades] at @s run kill @e[type=minecraft:item,tag=trade_index_item,limit=2,sort=nearest,distance=..0.5]