local util = require("__se-ssa-i__.data_util")

data.raw["assembling-machine"]["foundry"].crafting_categories = {
    "metallurgy",
    "pressing",
    "crafting-with-fluid-or-metallurgy",
    "casting",
}

local pressing_recipes = {
    "transport-belt",
    "fast-transport-belt",
    "underground-belt",
    "fast-underground-belt",
    "splitter",
    "fast-splitter",
    -- "pipe",--
    -- "pipe-to-ground",--
    "storage-tank",
    "pump",
    "rail",
    "burner-mining-drill",
    "electric-mining-drill",
    "area-mining-drill",
    "se-core-miner-drill",
    "offshore-pump",
    "pumpjack",
    "stone-furnace",
    "steel-furnace",
    "electric-furnace",
    "industrial-furnace",
    "stone-tablet",
    "se-heat-shielding",
    "se-heat-shielding-iridium",
    -- "se-iron-ingot-to-plate",--
    -- "se-steel-ingot-to-plate",--
    -- "se-copper-ingot-to-plate",--
    -- "se-beryllium-plate",--
    -- "se-holmium-plate",--
    -- "se-iridium-plate",--
    -- "iron-gear-wheel",--
    -- "iron-stick",--
    -- "barrel",--
    -- "motor",--
    -- "engine-unit",--
    -- "low-density-structure",--
    "se-low-density-structure-beryllium",
    -- "se-material-testing-pack",--
    "se-heavy-girder",
    "se-heavy-composite",
    "se-aeroframe-pole",
    "se-aeroframe-scaffold",
    "se-aeroframe-bulkhead",
    "se-cargo-rocket-cargo-pod",
    "se-cargo-rocket-fuel-tank",
}

local crafting_with_fluid_or_metallurgy_recipes = {
    "express-transport-belt",
    "express-underground-belt",
    "express-splitter",
    -- "concrete",--
    "refined-concrete",
    "se-heavy-bearing",
    "se-heavy-assembly",
}

util.set_category_for_recipes("pressing", pressing_recipes)

util.set_category_for_recipes("crafting-with-fluid-or-metallurgy", crafting_with_fluid_or_metallurgy_recipes)

util.update_casting_recipe(
    "se-steel-ingot",
    "casting-se-steel-ingot",
    data.raw.recipe["se-steel-ingot"].icons
)

util.update_casting_recipe(
    "iron-gear-wheel", 
    "casting-iron-gear-wheel",
    util.sub_icons(data.raw.item["iron-gear-wheel"].icon, data.raw.fluid["se-molten-iron"].icon)
)

util.update_casting_recipe(
    "iron-stick", 
    "casting-iron-stick",
    util.sub_icons(data.raw.item["iron-stick"].icon, data.raw.fluid["se-molten-iron"].icon)
)

util.update_casting_recipe(
    "barrel", 
    "casting-barrel",
    util.sub_icons(data.raw.item["barrel"].icon, data.raw.fluid["se-molten-iron"].icon)
)
util.update_casting_recipe(
    "motor", 
    "casting-motor",
    util.sub_icons(data.raw.item["motor"].icon, data.raw.fluid["se-molten-iron"].icon)
)

util.update_casting_recipe(
    "engine-unit", 
    "casting-engine-unit",
    util.sub_icons(data.raw.item["engine-unit"].icon, data.raw.fluid["se-molten-iron"].icon)
)

util.update_casting_recipe(
    "pipe", 
    "casting-pipe",
    util.sub_icons(data.raw.item["pipe"].icon, data.raw.fluid["se-molten-iron"].icon)
)

util.update_casting_recipe(
    "pipe-to-ground", 
    "casting-pipe-to-ground",
    util.sub_icons(data.raw.item["pipe-to-ground"].icon, data.raw.fluid["se-molten-iron"].icon)
)

util.update_casting_recipe(
    "copper-cable", 
    "casting-copper-cable",
    util.sub_icons(data.raw.item["copper-cable"].icon, data.raw.fluid["se-molten-copper"].icon)
)

util.update_casting_recipe(
    "low-density-structure", 
    "casting-low-density-structure",
    util.sub_sup_icons(data.raw.item["low-density-structure"].icon, data.raw.fluid["se-molten-iron"].icon, data.raw.fluid["se-molten-copper"].icon)
)

util.update_casting_recipe(
    "se-material-testing-pack", 
    "casting-se-material-testing-pack",
    util.sub_sup_icons(data.raw.item["se-material-testing-pack"].icon, data.raw.fluid["se-molten-iron"].icon, data.raw.fluid["se-molten-copper"].icon)
)

util.update_casting_recipe(
    "concrete", 
    "concrete-from-molten-iron",
    util.sub_icons(data.raw.item["concrete"].icon, data.raw.fluid["se-molten-iron"].icon)
)
