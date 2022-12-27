execute store result entity @s Air short 1.0 run scoreboard players get #air slowcast

scoreboard players remove @s slowcast.dist 1
scoreboard players operation #temp slowcast.itt = @s slowcast.itt

scoreboard players operation .search slowcast.id = @s slowcast.id
tag @e[type=#slowcast:casters,predicate=slowcast:search_id,limit=1] add slowcast.caster
tag @s add slowcast.this

function slowcast:raycast/list

tag @s remove slowcast.this
tag @e remove slowcast.caster

execute if score @s slowcast.dist matches -1..0 run function slowcast:zprivate/end