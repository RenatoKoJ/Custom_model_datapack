# Desc: Appends current trade index to the Trade Index Item's list
#
# Called by: wandering_trades:provide_trades

# The script starts with the "execute store result" command, 
# which stores the result of a command into a data storage location. 
# In this case, it stores the value of the "wt_tradeIndex" score of the nearest wandering trader NPC into 
# the "Item.tag.CurrentTradeIndex" integer data tag of the executing entity (usually the Trade Index Item).

# The next line uses the "data modify" command to append the value stored in "Item.tag.CurrentTradeIndex" to 
# the "TradeIndex" list in the "Item.tag" data tag of the executing entity. 
# This essentially adds the current trade index to the list of previous trade indices stored in the Trade Index Item.

# The purpose of this script is to keep track of the trade indices that have been generated for the wandering trader. 
# The Trade Index Item allows the player to view and keep a record of the trades they have encountered with the wandering trader. 
# Each time the wandering trader provides new trades, this script appends the current trade index to 
# the Trade Index Item's list, ensuring that the player has a record of all the trade indices they have encountered.

# Store the current trade index in the Trade Index Item's data
execute store result entity @s Item.tag.CurrentTradeIndex int 1 run scoreboard players get @e[type=minecraft:wandering_trader,sort=nearest,limit=1] wt_tradeIndex

# Append the current trade index to the Trade Index Item's list
data modify entity @s Item.tag.TradeIndex append from entity @s Item.tag.CurrentTradeIndex