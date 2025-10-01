local util = require("__se-ssa-i__.data_util")

data.raw.item["cryogenic-plant"].order = "e[chemical-plant]-a[cryogenic-plant]"
data.raw.item["cryogenic-plant"].subgroup = "chemistry"
data.raw.item["cryogenic-plant"].stack_size = 10

data.raw["assembling-machine"]["cryogenic-plant"].module_slots = mods["Krastorio2"] and 3 or 6

data.raw.recipe["cryogenic-plant"].category = "crafting"
data.raw.recipe["cryogenic-plant"].ingredients = {
    {type = "item", name = "refined-concrete", amount = 10},
    {type = "item", name = "chemical-plant", amount = 1},
    {type = "item", name = "processing-unit", amount = 8},
    {type = "item", name = "steel-plate", amount = 20},
    {type = "item", name = util.get_glass(), amount = 16}
}

data.raw.technology["cryogenic-plant"].prerequisites = {"space-science-pack"}
data.raw.technology["cryogenic-plant"].order = "e-g"
data.raw.technology["cryogenic-plant"].unit.count = 200
data.raw.technology["cryogenic-plant"].unit.time = 60
data.raw.technology["cryogenic-plant"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1}
}

util.tech_add_prerequisites("se-processing-cryonite", {"cryogenic-plant"})
