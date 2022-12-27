function slowcast:entity/list

# make a new ID, or copy previous
execute if score @s slowcast.id matches -2147483647..2147483647 run scoreboard players operation .id slowcast.id = @s slowcast.id
execute unless score @s slowcast.id matches -2147483647..2147483647 store result score .id slowcast.id run scoreboard players add .global slowcast.id 1
execute unless score @s slowcast.id matches -2147483647..2147483647 run scoreboard players operation @s slowcast.id = .id slowcast.id

scoreboard players operation #itt slowcast = .recursions slowcast
scoreboard players operation #dist slowcast = .iterations slowcast

execute as @e[tag=slowcast.new] run function slowcast:zprivate/set_scores