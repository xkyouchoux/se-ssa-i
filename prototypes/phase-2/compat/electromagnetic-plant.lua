local util = require("__se-ssa-i__.data_util")

data.raw["assembling-machine"]["electromagnetic-plant"].effect_receiver.base_effect.productivity = util.production_bonus

data.raw.item["electromagnetic-plant"].subgroup = "assembling"

data.raw.recipe["electromagnetic-plant"].category = "crafting"
data.raw.recipe["electromagnetic-plant"].ingredients = {
    {type = "item", name = "se-holmium-solenoid", amount = 38},
    {type = "item", name = "se-aeroframe-bulkhead", amount = 24},
    {type = "item", name = "se-quantum-processor", amount = 24},
    {type = "item", name = "refined-concrete", amount = 48},
    {type = "item", name = "assembling-machine-3", amount = 1}
}

data.raw.technology["electromagnetic-plant"].prerequisites = {"se-quantum-processor", "se-aeroframe-bulkhead", "automation-3"}
data.raw.technology["electromagnetic-plant"].order = "e-g"
data.raw.technology["electromagnetic-plant"].unit.count = 500
data.raw.technology["electromagnetic-plant"].unit.time = 60
data.raw.technology["electromagnetic-plant"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"se-astronomic-science-pack-3", 1},
    {"se-energy-science-pack-3", 1},
}
