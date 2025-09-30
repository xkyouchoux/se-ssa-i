local util = require("__se-ssa-i__.data_util")

data.raw["assembling-machine"]["foundry"].effect_receiver.base_effect.productivity = util.production_bonus

data.raw.recipe["foundry"].category = "crafting-with-fluid"
data.raw.recipe["foundry"].ingredients = {
    {type = "item", name = "se-heavy-composite", amount = 16},
    {type = "item", name = "processing-unit", amount = 8},
    {type = "item", name = "se-casting-machine", amount = 1},
    {type = "item", name = "se-aeroframe-bulkhead", amount = 16},
    {type = "fluid", name = "lubricant", amount = 80}
}

data.raw.technology["foundry"].prerequisites = {"se-heavy-composite", "se-aeroframe-bulkhead"}
data.raw.technology["foundry"].order = "e-g"

if not settings.startup["sessai-space-age-casting-recipes"].value then
    data.raw.technology["foundry"].effects = {
        {
            type = "unlock-recipe",
            recipe = "foundry"
        }
    }
end

data.raw.technology["foundry"].unit.count = 500
data.raw.technology["foundry"].unit.time = 60
data.raw.technology["foundry"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-astronomic-science-pack-3", 1},
    {"se-material-science-pack-3", 1},
}
