particle crit ~ ~1.656 ~ 0 0 0 0 1
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
execute unless block ~ ~1.656 ~ air run function slowcast:stop

execute positioned ~ ~1.656 ~ positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,tag=!slowcast.this,tag=!slowcast.caster] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run kill @s

execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function slowcast:raycast/loop2