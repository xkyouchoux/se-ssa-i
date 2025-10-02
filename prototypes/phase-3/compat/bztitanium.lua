if not mods["bztitanium"] then return end

local util = require("__se-ssa-i__.data_util")

util.update_casting_recipe(
    "low-density-structure",
    "casting-low-density-structure",
    util.sub_sup_icons(data.raw.item["low-density-structure"].icon, {icon=data.raw.fluid["molten-titanium"].icons[1].icon, scale = 0.1, icon_size = data.raw.fluid["molten-titanium"].icons[1].icon_size}, data.raw.fluid["se-molten-copper"].icon)
)
