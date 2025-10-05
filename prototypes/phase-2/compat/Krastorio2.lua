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

local recipes = {
    "casting-kr-steel-pipe",
    "casting-kr-steel-pipe-to-ground",
    "casting-kr-steel-gear-wheel",
    "casting-kr-iron-beam",
    "casting-kr-steel-beam",
    "casting-kr-inserter-parts",
    "casting-kr-automation-core"
}

for _,recipe in pairs(recipes) do
    table.insert(data.raw.technology["foundry"].effects, {
        type = "unlock-recipe",
        recipe = recipe
    })
end

data.raw.recipe["casting-iron-gear-wheel"].ingredients = {
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(1), fluidbox_multiplier = 10},
}

data.raw.recipe["casting-engine-unit"].ingredients = {
    {type = "item", name = "motor", amount = 2},
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(2) + util.get_iron_cost_for_steel(1), fluidbox_multiplier = 10},
}

data.raw.recipe["casting-se-material-testing-pack"].ingredients = {
    {type = "item", name = "plastic-bar", amount = 1},
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(1)},
    {type = "fluid", name = "se-molten-copper", amount = util.get_copper_cost(1)},
    {type = "item", name = "kr-rare-metals", amount = 1},
    {type = "item", name = "kr-lithium-chloride", amount = 1},
}

data.raw.recipe["casting-se-steel-ingot"].results[1].amount = 2
data.raw.recipe["casting-se-steel-ingot"].ingredients = {
    {type = "fluid", name = "se-molten-iron", amount = 700, fluidbox_multiplier = 10},
}
