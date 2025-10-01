local util = require("__se-ssa-i__.data_util")

data:extend({
    {
        type = "recipe",
        name = "casting-se-steel-ingot",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = 500, fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "se-steel-ingot", amount = 1}},
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "casting-barrel",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost_for_steel(1), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "barrel", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-motor",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "iron-gear-wheel", amount = 1},
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(1), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "motor", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-engine-unit",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "motor", amount = 2},
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(4) + util.get_iron_cost_for_steel(2), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "engine-unit", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-se-material-testing-pack",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "plastic-bar", amount = 1},
            {type = "item", name = "stone", amount = 1},
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(1)},
            {type = "fluid", name = "se-molten-copper", amount = util.get_copper_cost(1)},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "se-material-testing-pack", amount = 1}},
        allow_productivity = true
    },
})