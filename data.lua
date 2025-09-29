local util = require("__space-exploration__.data_util")

data:extend({
    {
        type = "recipe-category",
        name = "space-manufacturing-or-electromagnetics"
    },
    {
        type = "recipe-category",
        name = "space-electromagnetics-or-electromagnetics"
    }
})

data.raw.fluid["molten-iron"] = nil
data.raw.fluid["molten-copper"] = nil

data.raw.recipe["casting-pipe"] = nil
data.raw.recipe["casting-pipe-to-ground"] = nil
data.raw.recipe["iron-ore-melting"] = nil
data.raw.recipe["copper-ore-melting"] = nil
data.raw.recipe["casting-iron"] = nil
data.raw.recipe["casting-copper"] = nil
data.raw.recipe["casting-steel"] = nil
data.raw.recipe["casting-iron-gear-wheel"] = nil
data.raw.recipe["casting-iron-stick"] = nil
data.raw.recipe["casting-low-density-structure"] = nil
data.raw.recipe["concrete-from-molten-iron"] = nil
data.raw.recipe["casting-copper-cable"] = nil