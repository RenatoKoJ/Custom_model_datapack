# Desc: Recursively compares current trade index with the trade index list
#
# Called by: wandering_trades:check_existing_trades

# Store the current trade index in a score
execute store result score @s wt_tradeIndex run data get entity @s Item.tag.TradeIndex[0]

# Check if the trade index matches the trade index of the nearest wandering trader
execute if score @e[type=minecraft:wandering_trader,sort=nearest,limit=1] wt_tradeIndex = @s wt_tradeIndex run scoreboard players set @s wt_tradeIndex -64

# Remove the trade index from the item's TradeIndex list
data remove entity @s Item.tag.TradeIndex[0]

# If the trade index is in the range 1.., execute the recursive check
execute if score @s wt_tradeIndex matches 1.. run function wandering_trades:recursive_check