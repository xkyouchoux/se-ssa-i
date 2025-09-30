local util = require("__se-ssa-i__.data_util")

data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories = {
    "chemistry",
    "chemistry-or-cryogenics",
    "organic-or-chemistry",
    "cryogenics",
    "chemistry-or-electromagnetics",
    "melting",
}

local cryogenics_recipes = {
    "se-cryonite-lubricant",
    "se-cryonite-crystal",
    "se-cryonite-ion-exchange-beads",
    "se-cryonite-slush",
    "se-water-ice",
    "se-methane-ice",
    "se-beryllium-hydroxide",
    "se-naquium-refined",
    "se-holmium-chloride",
    "se-naquium-powder",
}

util.set_category_for_recipes("cryogenics", cryogenics_recipes)
