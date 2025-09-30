if not mods["Krastorio2"] then return end

local util = require("__se-ssa-i__.data_util")

util.add_categories_to_machines({
    "pressing", 
    "crafting-with-fluid-or-metallurgy", 
    "crafting-or-electromagnetics",  
    "metallurgy-or-assembling", 
    "organic-or-assembling",
    "electronics-or-assembling",
    "electronics",
    "electronics-with-fluid",
    "cryogenics-or-assembling"
}, {"kr-advanced-assembling-machine"})

util.add_categories_to_machines({
    "chemistry-or-cryogenics",
    "organic-or-chemistry",
    "cryogenics-or-assembling",
    "cryogenics",
    "chemistry-or-electromagnetics"
}, {"kr-advanced-chemical-plant"})

local pressing_recipes = {
    "kr-advanced-transport-belt",
    "kr-superior-transport-belt",
    "express-underground-belt",
    "kr-advanced-underground-belt",
    "kr-superior-underground-belt",
    "express-splitter",
    "kr-advanced-splitter",
    "kr-superior-splitter",
    "aai-kr-advanced-loader",
    "aai-kr-superior-loader",
    "kr-steel-pipe",
    "kr-steel-pipe-to-ground",
    "kr-big-storage-tank",
    "kr-huge-storage-tank",
    "kr-steel-pump",
    "kr-black-reinforced-plate",
    "kr-white-reinforced-plate",
    "kr-electric-mining-drill-mk2",
    "kr-electric-mining-drill-mk3",
    "kr-quarry-drill",
    "kr-mineral-water-pumpjack",
    "kr-steel-gear-wheel",
    "kr-imersium-gear-wheel",
    "kr-iron-beam",
    "kr-steel-beam",
    "kr-imersium-beam",
    "kr-inserter-parts",
    "kr-automation-core",
    "kr-loader",
    "kr-fast-loader",
    "kr-advanced-loader",
    "kr-superior-loader",
	"kr-advanced-lane-splitter",
	"kr-superior-lane-splitter"
}

local crafting_with_fluid_or_metallurgy_recipes = {
    "kr-express-loader",
}

local electronics_recipes = {
    "kr-superior-substation",
    "kr-tesla-coil",
    "kr-small-roboport",
    "kr-big-roboport",
    "kr-energy-storage",
    "se-kr-rare-metal-electric-motor",
    "kr-electronic-components",
    "kr-energy-control-unit",
}

local electronics_with_fluid_recipes = {
    "kr-advanced-solar-panel",
    "kr-ai-core",
}

local chemistry_or_electromagnetics_recipes = {
    "kr-lithium-sulfur-battery",
}

util.set_category_for_recipes("pressing", pressing_recipes)
util.set_category_for_recipes("crafting-with-fluid-or-metallurgy", crafting_with_fluid_or_metallurgy_recipes)
util.set_category_for_recipes("electronics", electronics_recipes)
util.set_category_for_recipes("electronics-with-fluid", electronics_with_fluid_recipes)
util.set_category_for_recipes("chemistry-or-electromagnetics", chemistry_or_electromagnetics_recipes)
