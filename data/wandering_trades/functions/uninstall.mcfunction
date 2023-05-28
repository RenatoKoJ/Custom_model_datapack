# Desc: Removes all scores within the datapack
#
# Called by: main:uninstall_message

# Clear the tick function schedule
schedule clear wandering_trades:tick

# Remove the 'wt_trades' objective
scoreboard objectives remove wt_trades

# Remove the 'wt_tradeIndex' objective
scoreboard objectives remove wt_tradeIndex