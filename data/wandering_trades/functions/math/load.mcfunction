# sets up various constants and objectives related to mathematics and trigonometry in Minecraft.

### Constants ###
# Creates a dummy objective called "constant."
# Sets the scores for different constant values ranging from -1 to 8388608.
scoreboard objectives add constant dummy
scoreboard players set -1 constant -1
scoreboard players set 2 constant 2
scoreboard players set 4 constant 4
scoreboard players set 8 constant 8
scoreboard players set 16 constant 16
scoreboard players set 32 constant 32
scoreboard players set 64 constant 64
scoreboard players set 256 constant 256
scoreboard players set 512 constant 512
scoreboard players set 4096 constant 4096
scoreboard players set 65536 constant 65536
scoreboard players set 262144 constant 262144
scoreboard players set 8388608 constant 8388608

### Random Number Generator ###
# Creates dummy objectives for the random number generator.
# These objectives will be used to store input values and output results during mathematical operations.
scoreboard objectives add math_output dummy
scoreboard objectives add math_input1 dummy
scoreboard objectives add math_input2 dummy
scoreboard objectives add math_temp1 dummy
scoreboard objectives add math_temp2 dummy
scoreboard objectives add math_temp3 dummy
scoreboard objectives add math_temp4 dummy
scoreboard objectives add math_temp5 dummy


###### TRIGONOMETRY ######
# Creates dummy objectives for angle, cosine, and sine.
# These objectives will be used to store angle values and their corresponding cosine and sine values.
scoreboard objectives add angle dummy
scoreboard objectives add cos dummy
scoreboard objectives add sin dummy

# Creates dummy objectives for theta and phi.
# These objectives will be used to store theta and phi angle values
### Get Theta ###
scoreboard objectives add theta dummy
### Get Phi ###
scoreboard objectives add phi dummy

