# Desc: Appends random trades to wandering traders
#
# Called by: wandering_trades:tick

# set up Blocks index
scoreboard players set @s math_input1 129
scoreboard players set @s math_input2 311

# Count the number of trades added
# Count trade as added if it is unique, else try again
scoreboard players add @s wt_trades 0
scoreboard players add @s[tag=success] wt_trades 1

# Display the trade count on the screen
#title @a title ["Loading... "]
#title @a subtitle [{"score":{"name":"@s","objective":"wt_trades"},"color": "gold"},"/",{"score":{"name":"@s","objective":"math_input2"},"color": "gold"}," trades"]

# determine the amount of random trades the trader will have [+0]
execute if score @s wt_trades >= @s wt_random run tag @s add has_new_block_trades
execute if score @s wt_trades >= @s wt_random run tag @s add has_new_trades
execute if score @s wt_trades >= @s wt_random run scoreboard players reset @s

# Remove success tag and try adding the trade again
tag @s[tag=!has_new_block_trades] remove success

# Get random trade index
function wandering_trades:math/random_trade_index

# Check if the trade index already exists in the trades
execute at @s[tag=!success,tag=!has_new_block_trades] as @e[type=minecraft:item,distance=..0.5,tag=trade_index_copy] run function wandering_trades:check_existing_trades

# Add the trade to the Trade Index  
execute at @s[tag=success,tag=!has_new_block_trades] as @e[type=minecraft:item,distance=..0.5,tag=trade_index] run function wandering_trades:append_trade_index_to_list

# Add trade to wandering trader if it has not been added already
execute as @s[tag=success,tag=!has_new_block_trades] at @s run function wandering_trades:add_trade