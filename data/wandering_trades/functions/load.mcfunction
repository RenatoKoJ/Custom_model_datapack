# Desc: Initializes all scores within the datapack
#
# Called by: main:tick

# This line creates a scoreboard objective named "wt_trades" with the type "dummy". 
# A scoreboard objective of type "dummy" is a customizable objective that can be used to store any type of data.
scoreboard objectives add wt_trades dummy

# This line creates a scoreboard objective named "wt_tradeIndex" with the type "dummy". 
# It will be used to keep track of the current trade index for the wandering trader.
scoreboard objectives add wt_tradeIndex dummy

# This line creates a scoreboard objective named "wt_random" with the type "dummy". 
# It can be used to store random values or any other data needed within the datapack.
scoreboard objectives add wt_random dummy