scoreboard players operation .search slowcast.id = @s slowcast.id
scoreboard players operation #type slowcast = @s slowcast.type

kill @s

execute as @e[type=#slowcast:casters,predicate=slowcast:search_id,limit=1] run function slowcast:end/list