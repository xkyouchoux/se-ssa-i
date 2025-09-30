if not mods["Krastorio2"] then return end

local util = require("__se-ssa-i__.data_util")

util.add_stacking_to_drill("kr-electric-mining-drill-mk3")
util.add_stacking_to_drill("kr-quarry-drill")

util.replace_or_add_ingredient("kr-superior-inserter", "bulk-inserter", "stack-inserter", 1)
util.replace_or_add_ingredient("kr-superior-long-inserter", "bulk-inserter", "stack-inserter", 1)

data.raw["inserter"]["kr-superior-inserter"].wait_for_full_stack = true
data.raw["inserter"]["kr-superior-inserter"].max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
data.raw["inserter"]["kr-superior-long-inserter"].wait_for_full_stack = true
data.raw["inserter"]["kr-superior-long-inserter"].max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
data.raw["inserter"]["stack-inserter"].next_upgrade = "kr-superior-inserter"

util.replace_or_add_ingredient("kr-advanced-chemical-plant", "chemical-plant", "cryogenic-plant", 2)

data.raw.technology["kr-superior-inserters"].prerequisites = {"se-heavy-bearing", "se-aeroframe-scaffold", "stack-inserter"}
