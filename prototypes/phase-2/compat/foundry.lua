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

data.raw.technology["foundry"].effects = {
    {
        type = "unlock-recipe",
        recipe = "foundry"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-se-steel-ingot"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-pipe"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-pipe-to-ground"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-copper-cable"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-iron-gear-wheel"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-iron-stick"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-barrel"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-motor"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-engine-unit"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-low-density-structure"
    },
    {
        type = "unlock-recipe",
        recipe = "casting-se-material-testing-pack"
    },
    {
        type = "unlock-recipe",
        recipe = "concrete-from-molten-iron"
    }
}

data.raw.recipe["casting-pipe"].ingredients = {
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(1), fluidbox_multiplier = 10},
}

data.raw.recipe["casting-pipe-to-ground"].ingredients = {
    {type = "item", name = "pipe", amount = 10},
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(5), fluidbox_multiplier = 10},
}

data.raw.recipe["casting-copper-cable"].ingredients = {
    {type = "fluid", name = "se-molten-copper", amount = util.get_copper_cost(1), fluidbox_multiplier = 10},
}

data.raw.recipe["concrete-from-molten-iron"].ingredients = {
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(1)},
    {type = "item", name = "stone-brick", amount = 5},
    {type = "item", name = util.get_sand(), amount = 10},
    {type = "fluid", name = "water", amount = 100},
}

data.raw.recipe["casting-iron-gear-wheel"].ingredients = {
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(2), fluidbox_multiplier = 10},
}

data.raw.recipe["casting-iron-stick"].ingredients = {
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(2), fluidbox_multiplier = 10},
}

data.raw.recipe["casting-low-density-structure"].results[1].amount = 2
data.raw.recipe["casting-low-density-structure"].ingredients = {
    {type = "item", name = "plastic-bar", amount = 10},
    {type = "item", name = util.get_glass(), amount = 10},
    {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost_for_steel(5)},
    {type = "fluid", name = "se-molten-copper", amount = util.get_copper_cost(10)},
}

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
