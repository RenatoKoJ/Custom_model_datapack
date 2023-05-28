# Desc: Places 2 items to transfer trade index data
#
# Called by: wandering_trades:tick

# Add a tag to the executing entity
tag @s add trade_items_spawned

# Summon the first item to transfer trade index data
summon minecraft:item ~ ~ ~ {Tags:["trade_index_item","trade_index"],Item:{id:"minecraft:brown_mushroom",Count:1},NoGravity:1b,PickupDelay:32767}

# Summon the second item to transfer trade index data (copy of trade index)
summon minecraft:item ~ ~ ~ {Tags:["trade_index_item","trade_index_copy"],Item:{id:"minecraft:brown_mushroom",Count:1},NoGravity:1b,PickupDelay:32767}