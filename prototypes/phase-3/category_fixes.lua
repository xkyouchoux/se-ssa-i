local util = require("__se-ssa-i__.data_util")

table.insert(data.raw.character.character.crafting_categories, "crafting-or-metallurgy")
table.insert(data.raw.character.character.crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["god-controller"].default.crafting_categories, "crafting-or-metallurgy")
table.insert(data.raw["god-controller"].default.crafting_categories, "crafting-or-electromagnetics")

util.add_categories_to_machines({
    "crafting-or-metallurgy",
    "crafting-or-electromagnetics",
}, {
    "burner-assembling-machine",
    "assembling-machine-1",
    "assembling-machine-2",
    "assembling-machine-3",
    "se-space-assembling-machine",
    "se-space-assembling-machine-grounded",
    "se-space-manufactory",
    "se-space-manufactory-grounded"
})

util.add_categories_to_machines({
    "crafting-with-fluid-or-metallurgy",
    "crafting-with-fluid-or-electromagnetics",
}, {
    "assembling-machine-2",
    "assembling-machine-3",
    "se-space-assembling-machine",
    "se-space-assembling-machine-grounded",
    "se-space-manufactory",
    "se-space-manufactory-grounded"
})

util.add_categories_to_machines({
    "crafting-or-advanced-electromagnetics",
}, {
    "assembling-machine-3",
    "se-space-assembling-machine",
    "se-space-assembling-machine-grounded",
    "se-space-manufactory",
    "se-space-manufactory-grounded",
    "se-space-electromagnetics-laboratory"
})

util.add_categories_to_machines({"space-manufacturing-or-electromagnetics"}, {
    "se-space-manufactory",
    "electromagnetic-plant"
})

util.remove_category_from_machines("crafting-or-electromagnetics", {"se-space-electromagnetics-laboratory"})
util.add_categories_to_machines({"space-electromagnetics-or-electromagnetics"}, {"se-space-electromagnetics-laboratory", "electromagnetic-plant"})

util.add_categories_to_machines({"chemistry-or-electromagnetics"}, {"chemical-plant"})

util.add_categories_to_machines({
    "chemistry-or-electromagnetics",
    "cryogenics",
}, {
    "se-space-biochemical-laboratory",
    "se-space-biochemical-laboratory-grounded"
})

-- FOUNDRY

data.raw.recipe["transport-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["fast-transport-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["express-transport-belt"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["underground-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["fast-underground-belt"].category = "crafting-or-metallurgy"
data.raw.recipe["express-underground-belt"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["splitter"].category = "crafting-or-metallurgy"
data.raw.recipe["fast-splitter"].category = "crafting-or-metallurgy"
data.raw.recipe["express-splitter"].category = "crafting-with-fluid-or-metallurgy"

data.raw.recipe["pipe"].category = "crafting-or-metallurgy"
data.raw.recipe["pipe-to-ground"].category = "crafting-or-metallurgy"
data.raw.recipe["storage-tank"].category = "crafting-or-metallurgy"
data.raw.recipe["pump"].category = "crafting-or-metallurgy"
data.raw.recipe["rail"].category = "crafting-or-metallurgy"
data.raw.recipe["concrete"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["refined-concrete"].category = "crafting-with-fluid-or-metallurgy"

data.raw.recipe["burner-mining-drill"].category = "crafting-or-metallurgy"
data.raw.recipe["electric-mining-drill"].category = "crafting-or-metallurgy"
data.raw.recipe["area-mining-drill"].category = "crafting-or-metallurgy"
data.raw.recipe["se-core-miner-drill"].category = "crafting-or-metallurgy"
data.raw.recipe["offshore-pump"].category = "crafting-or-metallurgy"
data.raw.recipe["pumpjack"].category = "crafting-or-metallurgy"
data.raw.recipe["stone-furnace"].category = "crafting-or-metallurgy"
data.raw.recipe["steel-furnace"].category = "crafting-or-metallurgy"
data.raw.recipe["electric-furnace"].category = "crafting-or-metallurgy"
data.raw.recipe["industrial-furnace"].category = "crafting-or-metallurgy"

data.raw.recipe["stone-tablet"].category = "crafting-or-metallurgy"
data.raw.recipe["se-heat-shielding"].category = "crafting-or-metallurgy"
data.raw.recipe["se-heat-shielding-iridium"].category = "crafting-or-metallurgy"
data.raw.recipe["se-iron-ingot-to-plate"].category = "crafting-or-metallurgy"
data.raw.recipe["se-steel-ingot-to-plate"].category = "crafting-or-metallurgy"
data.raw.recipe["se-copper-ingot-to-plate"].category = "crafting-or-metallurgy"
data.raw.recipe["se-beryllium-plate"].category = "crafting-or-metallurgy"
data.raw.recipe["se-holmium-plate"].category = "crafting-or-metallurgy"
data.raw.recipe["se-iridium-plate"].category = "crafting-or-metallurgy"

data.raw.recipe["iron-gear-wheel"].category = "crafting-or-metallurgy"
data.raw.recipe["iron-stick"].category = "crafting-or-metallurgy"
data.raw.recipe["barrel"].category = "crafting-or-metallurgy"
data.raw.recipe["motor"].category = "crafting-or-metallurgy"
data.raw.recipe["engine-unit"].category = "crafting-or-metallurgy"
data.raw.recipe["low-density-structure"].category = "crafting-or-metallurgy"
data.raw.recipe["se-low-density-structure-beryllium"].category = "crafting-or-metallurgy"
data.raw.recipe["se-material-testing-pack"].category = "crafting-or-metallurgy"
data.raw.recipe["se-heavy-girder"].category = "crafting-or-metallurgy"
data.raw.recipe["se-heavy-bearing"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["se-heavy-composite"].category = "crafting-or-metallurgy"
data.raw.recipe["se-heavy-assembly"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["se-aeroframe-pole"].category = "crafting-or-metallurgy"
data.raw.recipe["se-aeroframe-scaffold"].category = "crafting-or-metallurgy"
data.raw.recipe["se-aeroframe-bulkhead"].category = "crafting-or-metallurgy"
data.raw.recipe["se-cargo-rocket-cargo-pod"].category = "crafting-or-metallurgy"
data.raw.recipe["se-cargo-rocket-fuel-tank"].category = "crafting-or-metallurgy"

-- ELECTROMAGNETIC PLANT

data.raw.recipe["small-electric-pole"].category = "crafting-or-electromagnetics"
data.raw.recipe["small-iron-electric-pole"].category = "crafting-or-electromagnetics"
data.raw.recipe["medium-electric-pole"].category = "crafting-or-electromagnetics"
data.raw.recipe["big-electric-pole"].category = "crafting-or-electromagnetics"
data.raw.recipe["substation"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-addon-power-pole"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-pylon"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-pylon-substation"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-pylon-construction"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-pylon-construction-radar"].category = "crafting-or-electromagnetics"
data.raw.recipe["roboport"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-supercharger"].category = "crafting-or-electromagnetics"
data.raw.recipe["small-lamp"].category = "crafting-or-electromagnetics"
data.raw.recipe["arithmetic-combinator"].category = "crafting-or-electromagnetics"
data.raw.recipe["decider-combinator"].category = "crafting-or-electromagnetics"
data.raw.recipe["selector-combinator"].category = "crafting-or-electromagnetics"
data.raw.recipe["constant-combinator"].category = "crafting-or-electromagnetics"
data.raw.recipe["power-switch"].category = "crafting-or-electromagnetics"
data.raw.recipe["programmable-speaker"].category = "crafting-or-electromagnetics"
data.raw.recipe["display-panel"].category = "crafting-or-electromagnetics"
data.raw.recipe["aai-signal-sender"].category = "crafting-or-electromagnetics"
data.raw.recipe["aai-signal-receiver"].category = "crafting-or-electromagnetics"

data.raw.recipe["solar-panel"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-space-solar-panel"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["se-space-solar-panel-2"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["se-space-solar-panel-3"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["accumulator"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-space-accumulator"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["se-space-accumulator-2"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["beacon"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-compact-beacon"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-compact-beacon-2"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-wide-beacon"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-wide-beacon-2"].category = "crafting-or-electromagnetics"
data.raw.recipe["speed-module"].category = "crafting-or-electromagnetics"
data.raw.recipe["speed-module-2"].category = "crafting-or-electromagnetics"
data.raw.recipe["speed-module-3"].category = "crafting-or-electromagnetics"
data.raw.recipe["speed-module-4"].category = "crafting-or-electromagnetics"
data.raw.recipe["speed-module-5"].category = "crafting-or-electromagnetics"
data.raw.recipe["speed-module-6"].category = "crafting-or-electromagnetics"
data.raw.recipe["speed-module-7"].category = "crafting-or-electromagnetics"
data.raw.recipe["speed-module-8"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["speed-module-9"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["efficiency-module"].category = "crafting-or-electromagnetics"
data.raw.recipe["efficiency-module-2"].category = "crafting-or-electromagnetics"
data.raw.recipe["efficiency-module-3"].category = "crafting-or-electromagnetics"
data.raw.recipe["efficiency-module-4"].category = "crafting-or-electromagnetics"
data.raw.recipe["efficiency-module-5"].category = "crafting-or-electromagnetics"
data.raw.recipe["efficiency-module-6"].category = "crafting-or-electromagnetics"
data.raw.recipe["efficiency-module-7"].category = "crafting-or-electromagnetics"
data.raw.recipe["efficiency-module-8"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["efficiency-module-9"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["productivity-module"].category = "crafting-or-electromagnetics"
data.raw.recipe["productivity-module-2"].category = "crafting-or-electromagnetics"
data.raw.recipe["productivity-module-3"].category = "crafting-or-electromagnetics"
data.raw.recipe["productivity-module-4"].category = "crafting-or-electromagnetics"
data.raw.recipe["productivity-module-5"].category = "crafting-or-electromagnetics"
data.raw.recipe["productivity-module-6"].category = "crafting-or-electromagnetics"
data.raw.recipe["productivity-module-7"].category = "crafting-or-electromagnetics"
data.raw.recipe["productivity-module-8"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["productivity-module-9"].category = "crafting-with-fluid-or-electromagnetics"

data.raw.recipe["flying-robot-frame"].category = "crafting-or-electromagnetics"
data.raw.recipe["electric-motor"].category = "crafting-or-electromagnetics"
data.raw.recipe["electric-engine-unit"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["copper-cable"].category = "crafting-or-electromagnetics"
data.raw.recipe["se-holmium-cable"].category = "crafting-or-advanced-electromagnetics"
data.raw.recipe["se-superconductive-cable"].category = "space-electromagnetics-or-electromagnetics"
data.raw.recipe["se-holmium-solenoid"].category = "crafting-or-advanced-electromagnetics"
data.raw.recipe["se-dynamic-emitter"].category = "space-electromagnetics-or-electromagnetics"
data.raw.recipe["battery"].category = "chemistry-or-electromagnetics"
data.raw.recipe["electronic-circuit"].category = "crafting-or-electromagnetics"
data.raw.recipe["electronic-circuit-wood"].category = "crafting-or-electromagnetics"
data.raw.recipe["advanced-circuit"].category = "crafting-or-electromagnetics"
data.raw.recipe["processing-unit"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["se-processing-unit-holmium"].category = "crafting-with-fluid-or-electromagnetics"
data.raw.recipe["se-quantum-processor"].category = "space-electromagnetics-or-electromagnetics"
data.raw.recipe["satellite"].category = "crafting-or-electromagnetics"
data.raw.recipe["rocket-control-unit"].category = "crafting-or-electromagnetics"

-- CRYOGENIC PLANT

data.raw.recipe["se-cryonite-lubricant"].category = "cryogenics"
data.raw.recipe["se-cryonite-crystal"].category = "cryogenics"
data.raw.recipe["se-cryonite-ion-exchange-beads"].category = "cryogenics"
data.raw.recipe["se-cryonite-slush"].category = "cryogenics"
data.raw.recipe["se-water-ice"].category = "cryogenics"
data.raw.recipe["se-methane-ice"].category = "cryogenics"
data.raw.recipe["se-beryllium-hydroxide"].category = "cryogenics"
data.raw.recipe["se-naquium-refined"].category = "cryogenics"
data.raw.recipe["se-holmium-chloride"].category = "cryogenics"
data.raw.recipe["se-naquium-powder"].category = "cryogenics"
