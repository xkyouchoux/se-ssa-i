if not mods["Krastorio2"] then return end

local util = require("__se-ssa-i__.data_util")

data.raw.recipe["cryogenic-plant"].ingredients = {
    {type = "item", name = "refined-concrete", amount = 10},
    {type = "item", name = "chemical-plant", amount = 1},
    {type = "item", name = "processing-unit", amount = 8},
    {type = "item", name = "steel-plate", amount = 20},
    {type = "item", name = "kr-glass", amount = 16}
}

data.raw["assembling-machine"]["cryogenic-plant"].module_slots = 3

data.raw["inserter"]["kr-superior-inserter"].wait_for_full_stack = true
data.raw["inserter"]["kr-superior-inserter"].max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
data.raw["inserter"]["kr-superior-long-inserter"].wait_for_full_stack = true
data.raw["inserter"]["kr-superior-long-inserter"].max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
data.raw["inserter"]["stack-inserter"].next_upgrade = "kr-superior-inserter"

util.replace_or_add_ingredient("kr-superior-inserter", "bulk-inserter", "stack-inserter", 1)
util.replace_or_add_ingredient("kr-superior-long-inserter", "bulk-inserter", "stack-inserter", 1)

data.raw.technology["kr-superior-inserters"].prerequisites = {"se-heavy-bearing", "se-aeroframe-scaffold", "stack-inserter"}

util.replace_or_add_ingredient("kr-advanced-chemical-plant", "chemical-plant", "cryogenic-plant", 2)

util.add_categories_to_machines({
    "crafting-or-metallurgy", 
    "crafting-with-fluid-or-metallurgy", 
    "crafting-or-electromagnetics", 
    "crafting-with-fluid-or-electromagnetics",
    "crafting-or-advanced-electromagnetics"
}, {"kr-advanced-assembling-machine"})
util.add_categories_to_machines({
    "chemistry-or-electromagnetics",
    "cryogenics"
}, {"kr-advanced-chemical-plant"})

data.raw.recipe["kr-advanced-transport-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-superior-transport-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["express-underground-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-advanced-underground-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-superior-underground-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["express-splitter"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-advanced-splitter"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-superior-splitter"].category = "crafting-or-metallurgy"
if data.raw.recipe["aai-kr-advanced-loader"] then
    data.raw.recipe["aai-kr-advanced-loader"].category = "crafting-or-metallurgy"
    data.raw.recipe["aai-kr-superior-loader"].category = "crafting-or-metallurgy"
end
data.raw.recipe["kr-steel-pipe"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-steel-pipe-to-ground"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-big-storage-tank"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-huge-storage-tank"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-steel-pump"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-black-reinforced-plate"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-white-reinforced-plate"].category = "crafting-or-metallurgy"

data.raw.recipe["kr-electric-mining-drill-mk2"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-electric-mining-drill-mk3"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-quarry-drill"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-mineral-water-pumpjack"].category = "crafting-or-metallurgy"

data.raw.recipe["kr-steel-gear-wheel"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-imersium-gear-wheel"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-iron-beam"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-steel-beam"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-imersium-beam"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-inserter-parts"].category = "crafting-or-metallurgy"
data.raw.recipe["kr-automation-core"].category = "crafting-or-metallurgy"

if data.raw.recipe["kr-loader"] then
    data.raw.recipe["kr-loader"].category = "crafting-or-metallurgy"
    data.raw.recipe["kr-fast-loader"].category = "crafting-or-metallurgy"
    data.raw.recipe["kr-express-loader"].category = "crafting-with-fluid-or-metallurgy"
    data.raw.recipe["kr-advanced-loader"].category = "crafting-or-metallurgy"
    data.raw.recipe["kr-superior-loader"].category = "crafting-or-metallurgy"
end

data.raw.recipe["kr-superior-substation"].category = "crafting-or-electromagnetics"
data.raw.recipe["kr-tesla-coil"].category = "crafting-or-electromagnetics"
data.raw.recipe["kr-small-roboport"].category = "crafting-or-electromagnetics"
data.raw.recipe["kr-big-roboport"].category = "crafting-or-electromagnetics"

data.raw.recipe["kr-advanced-solar-panel"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["kr-energy-storage"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-kr-rare-metal-electric-motor"].category = "crafting-or-electromagnetics"
data.raw.recipe["kr-electronic-components"].category = "crafting-or-electromagnetics"
data.raw.recipe["kr-lithium-sulfur-battery"].category = "chemistry-or-electromagnetics"
data.raw.recipe["kr-energy-control-unit"].category = "crafting-or-electromagnetics"
data.raw.recipe["kr-ai-core"].category = "crafting-with-fluid-or-electromagnetics"