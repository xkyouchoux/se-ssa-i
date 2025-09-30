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
    "pipe",
    "pipe-to-ground",
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
    "se-iron-ingot-to-plate",
    "se-steel-ingot-to-plate",
    "se-copper-ingot-to-plate",
    "se-beryllium-plate",
    "se-holmium-plate",
    "se-iridium-plate",
    "iron-gear-wheel",
    "iron-stick",
    "barrel",
    "motor",
    "engine-unit",
    "low-density-structure",
    "se-low-density-structure-beryllium",
    "se-material-testing-pack",
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
    "concrete",
    "refined-concrete",
    "se-heavy-bearing",
    "se-heavy-assembly",
}

util.set_category_for_recipes("pressing", pressing_recipes)

util.set_category_for_recipes("crafting-with-fluid-or-metallurgy", crafting_with_fluid_or_metallurgy_recipes)

if not settings.startup["sessai-space-age-casting-recipes"].value then
    data.raw.fluid["molten-iron"].hidden = true
    data.raw.fluid["molten-copper"].hidden = true

    data.raw.recipe["casting-pipe"].hidden = true
    data.raw.recipe["casting-pipe-to-ground"].hidden = true
    data.raw.recipe["iron-ore-melting"].hidden = true
    data.raw.recipe["copper-ore-melting"].hidden = true
    data.raw.recipe["casting-iron"].hidden = true
    data.raw.recipe["casting-copper"].hidden = true
    data.raw.recipe["casting-steel"].hidden = true
    data.raw.recipe["casting-iron-gear-wheel"].hidden = true
    data.raw.recipe["casting-iron-stick"].hidden = true
    data.raw.recipe["casting-low-density-structure"].hidden = true
    data.raw.recipe["concrete-from-molten-iron"].hidden = true
    data.raw.recipe["casting-copper-cable"].hidden = true
end
