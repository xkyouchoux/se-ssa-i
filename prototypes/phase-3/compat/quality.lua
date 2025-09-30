if not data.raw.technology["quality-module"] then return end

local util = require("__se-ssa-i__.data_util")

local electronics_recipes = {
    "quality-module",
    "quality-module-2",
    "quality-module-3",
    "quality-module-4",
    "quality-module-5",
    "quality-module-6",
    "quality-module-7",
}

local electronics_with_fluid_recipes = {
    "quality-module-8",
    "quality-module-9",
}

util.set_category_for_recipes("electronics", electronics_recipes)
util.set_category_for_recipes("electronics-with-fluid", electronics_with_fluid_recipes)
