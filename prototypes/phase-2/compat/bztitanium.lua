if not mods["bztitanium"] then return end

local util = require("__se-ssa-i__.data_util")

data.raw.recipe["casting-low-density-structure"].ingredients = {
    {type = "item", name = "plastic-bar", amount = 10},
    {type = "item", name = util.get_glass(), amount = 10},
    {type = "fluid", name = "se-molten-copper", amount = util.get_copper_cost(10)},
    {type = "fluid", name = "molten-titanium", amount = util.get_titanium_cost(2)},
}