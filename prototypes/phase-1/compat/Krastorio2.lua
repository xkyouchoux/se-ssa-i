if not mods["Krastorio2"] then return end

local util = require("__se-ssa-i__.data_util")

data:extend({
    {
        type = "recipe",
        name = "casting-kr-steel-pipe",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost_for_steel(1), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "kr-steel-pipe", amount = 1}},
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "casting-kr-steel-pipe-to-ground",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "kr-steel-pipe", amount = 15},
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost_for_steel(5), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "kr-steel-pipe-to-ground", amount = 2}},
        allow_productivity = false
    },
    {
        type = "recipe",
        name = "casting-kr-steel-gear-wheel",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost_for_steel(1), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "kr-steel-gear-wheel", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-kr-iron-beam",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(2), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "kr-iron-beam", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-kr-steel-beam",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost_for_steel(2), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "kr-steel-beam", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-kr-inserter-parts",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "iron-gear-wheel", amount = 2},
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(1), fluidbox_multiplier = 10},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "kr-inserter-parts", amount = 1}},
        allow_productivity = true
    },
    {
        type = "recipe",
        name = "casting-kr-automation-core",
        category = "metallurgy",
        subgroup = "vulcanus-processes",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "iron-gear-wheel", amount = 4},
            {type = "fluid", name = "se-molten-iron", amount = util.get_iron_cost(2)},
            {type = "fluid", name = "se-molten-copper", amount = util.get_copper_cost(6)},
        },
        allow_decomposition = false,
        results = {{type = "item", name = "kr-automation-core", amount = 1}},
        allow_productivity = true
    },
})