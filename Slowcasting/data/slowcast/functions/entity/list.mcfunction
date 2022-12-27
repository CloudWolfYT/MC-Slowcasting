execute if score .entity slowcast matches 0 run summon marker ~ ~ ~ {Tags:["slowcast","slowcast.new"]}
execute if score .entity slowcast matches 1 run summon item ~ ~ ~ {Tags:["slowcast","slowcast.new"],Air:-1s,PickupDelay:32767,Item:{id:"minecraft:iron_sword",Count:1b},NoGravity:1b}
execute if score .entity slowcast matches 2 run function slowcast:entity/spawn2
# ... repeat