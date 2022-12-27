scoreboard players set .entity slowcast 1
scoreboard players set .type slowcast 1
scoreboard players set .recursions slowcast 5
scoreboard players set .iterations slowcast 30

scoreboard players set @s dropSword 0
execute anchored eyes positioned ^ ^ ^ run function slowcast:start