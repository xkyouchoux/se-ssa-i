local util = require("__se-ssa-i__.data_util")

data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories = {
    "electromagnetics",
    "electronics",
    "electronics-with-fluid",
    "electromagnetics",
    "chemistry-or-electromagnetics",
    "crafting-or-electromagnetics",
    "space-manufacturing-or-electromagnetics",
    "space-electromagnetics-or-electromagnetics"
}

local electronics_recipes = {
    "small-electric-pole",
    "small-iron-electric-pole",
    "medium-electric-pole",
    "big-electric-pole",
    "substation",
    "se-addon-power-pole",
    "se-pylon",
    "se-pylon-substation",
    "se-pylon-construction",
    "se-pylon-construction-radar",
    "roboport",
    "se-supercharger",
    "small-lamp",
    "arithmetic-combinator",
    "decider-combinator",
    "selector-combinator",
    "constant-combinator",
    "power-switch",
    "programmable-speaker",
    "display-panel",
    "aai-signal-sender",
    "aai-signal-receiver",
    "solar-panel",
    "accumulator",
    "beacon",
    "se-compact-beacon",
    "se-compact-beacon-2",
    "se-wide-beacon",
    "se-wide-beacon-2",
    "speed-module",
    "speed-module-2",
    "speed-module-3",
    "speed-module-4",
    "speed-module-5",
    "speed-module-6",
    "speed-module-7",
    "efficiency-module",
    "efficiency-module-2",
    "efficiency-module-3",
    "efficiency-module-4",
    "efficiency-module-5",
    "efficiency-module-6",
    "efficiency-module-7",
    "productivity-module",
    "productivity-module-2",
    "productivity-module-3",
    "productivity-module-4",
    "productivity-module-5",
    "productivity-module-6",
    "productivity-module-7",
    "flying-robot-frame",
    "electric-motor",
    "copper-cable",
    "electronic-circuit",
    "electronic-circuit-wood",
    "advanced-circuit",
    "satellite",
    "rocket-control-unit",
}

local chemistry_or_electromagnetics_recipes = {
    "battery"
}

local electronics_with_fluid_recipes = {
    "speed-module-8",
    "speed-module-9",
    "efficiency-module-8",
    "efficiency-module-9",
    "productivity-module-8",
    "productivity-module-9",
    "electric-engine-unit",
    "processing-unit",
    "se-processing-unit-holmium",
}

local space_manufacturing_or_electromagnetics_recipes = {
    "se-space-solar-panel",
    "se-space-solar-panel-2",
    "se-space-solar-panel-3",
    "se-space-accumulator",
    "se-space-accumulator-2",
}

local space_electromagnetics_or_electromagnetics_recipes = {
    "se-superconductive-cable",
    "se-dynamic-emitter",
    "se-quantum-processor",
}

util.set_category_for_recipes("electronics", electronics_recipes)
util.set_category_for_recipes("chemistry-or-electromagnetics", chemistry_or_electromagnetics_recipes)
util.set_category_for_recipes("electronics-with-fluid", electronics_with_fluid_recipes)
util.set_category_for_recipes("space-manufacturing-or-electromagnetics", space_manufacturing_or_electromagnetics_recipes)
util.set_category_for_recipes("space-electromagnetics-or-electromagnetics", space_electromagnetics_or_electromagnetics_recipes)
