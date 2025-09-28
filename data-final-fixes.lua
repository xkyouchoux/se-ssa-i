local util = require("__space-exploration__.data_util")

util.tech_add_prerequisites("se-medpack", {"automation-science-pack"})

function add_categories_to_machines(categories, machines)
    for _,machine in pairs(machines) do
        for _,category in pairs(categories) do
            table.insert(data.raw["assembling-machine"][machine].crafting_categories, category)
        end
    end
end

data.raw.technology["stack-inserter"].prerequisites = {"se-biological-science-pack-1", "bulk-inserter", "se-aeroframe-pole"}
data.raw.technology["stack-inserter"].unit.count = 200
data.raw.technology["stack-inserter"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-astronomic-science-pack-1", 1},
    {"se-biological-science-pack-1", 1},
}

data.raw.technology["transport-belt-capacity-1"].prerequisites = {"se-biological-science-pack-2", "se-astronomic-science-pack-2", "stack-inserter"}
data.raw.technology["transport-belt-capacity-1"].unit.count = 250
data.raw.technology["transport-belt-capacity-1"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-astronomic-science-pack-2", 1},
    {"se-biological-science-pack-2", 1},
}

data.raw.technology["transport-belt-capacity-2"].prerequisites = {"se-biological-science-pack-4", "se-astronomic-science-pack-4", "transport-belt-capacity-1"}
data.raw.technology["transport-belt-capacity-2"].unit.count = 500
data.raw.technology["transport-belt-capacity-2"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-astronomic-science-pack-4", 1},
    {"se-biological-science-pack-4", 1},
}

data.raw.technology["turbo-transport-belt"].prerequisites = {"se-heavy-bearing", "logistics-3"}
data.raw.technology["turbo-transport-belt"].unit.count = 500
data.raw.technology["turbo-transport-belt"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"production-science-pack",1 },
    {"se-material-science-pack-2", 1},
}

if mods["aai-loaders"] then
    data.raw.technology["aai-turbo-loader"].unit.ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"se-rocket-science-pack", 1},
        {"space-science-pack", 1},
        {"production-science-pack",1 },
        {"se-material-science-pack-2", 1},
    }
end

local recipes_to_fix = {
    "se-molten-iron",
	"se-iron-ingot",
	"se-steel-ingot",
	"se-molten-copper",
	"se-copper-ingot",
	"se-molten-beryllium",
	"se-beryllium-ingot",
	"se-molten-holmium",
	"se-holmium-ingot",
	"se-iridium-blastcake",
	"se-iridium-ingot",
    "electronic-circuit",
	"electronic-circuit-wood",
	"advanced-circuit",
	"processing-unit",
	"se-processing-unit-holmium",
	"se-empty-data",
	"speed-module",
	"speed-module-2",
	"speed-module-3",
	"speed-module-4",
	"speed-module-5",
	"speed-module-6",
	"speed-module-7",
	"speed-module-8",
	"speed-module-9",
	"productivity-module",
	"productivity-module-2",
	"productivity-module-3",
	"productivity-module-4",
	"productivity-module-5",
	"productivity-module-6",
	"productivity-module-7",
	"productivity-module-8",
	"productivity-module-9",
	"efficiency-module",
	"efficiency-module-2",
	"efficiency-module-3",
	"efficiency-module-4",
	"efficiency-module-5",
	"efficiency-module-6",
	"efficiency-module-7",
	"efficiency-module-8",
	"efficiency-module-9",
}

for _,recipe in pairs(recipes_to_fix) do
    data.raw.recipe[recipe].additional_categories = {}
end

add_categories_to_machines({"pressing", "electronics"}, {"burner-assembling-machine"}
)

-- CRYOGENIC PLANT

data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories = {"cryogenics", "chemistry-or-cryogenics", "melting", "cryogenics-or-assembling"}
data.raw.recipe["cryogenic-plant"].category = "crafting"
data.raw.technology["cryogenic-plant"].prerequisites = {"space-science-pack"}
data.raw.technology["cryogenic-plant"].order = "e-g"
data.raw.technology["cryogenic-plant"].unit.count = 200
data.raw.technology["cryogenic-plant"].unit.time = 60
data.raw.technology["cryogenic-plant"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1}
}

util.tech_add_prerequisites("se-processing-cryonite", {"cryogenic-plant"})

add_categories_to_machines({"melting"}, {"chemical-plant"})
add_categories_to_machines({"cryogenics", "cryogenics-or-assembling"}, {"se-space-biochemical-laboratory", "se-space-biochemical-laboratory-grounded"})

data.raw.recipe["se-steam-to-water"].category = "chemistry-or-cryogenics"
data.raw.recipe["light-oil-cracking"].category = "chemistry-or-cryogenics"
data.raw.recipe["heavy-oil-cracking"].category = "chemistry-or-cryogenics"
data.raw.recipe["lubricant"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-vulcanite-ion-exchange-beads"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-pyroflux"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-pyroflux-steam"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-beryllium-sulfate"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-beryllium-powder"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-iridium-powder"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-vitalic-epoxy"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-vitamelange-bloom"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-vitamelange-extract"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-vitalic-acid"].category = "chemistry-or-cryogenics"
data.raw.recipe["se-bioscrubber"].category = "chemistry-or-cryogenics"

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

-- FOUNDRY

data.raw["assembling-machine"]["foundry"].crafting_categories = {"metallurgy", "metallurgy-or-assembling", "crafting-with-fluid-or-metallurgy", "pressing", "casting"}
data.raw.recipe["foundry"].category = "crafting-with-fluid"
data.raw.technology["foundry"].prerequisites = {"se-heavy-composite", "se-aeroframe-bulkhead"}
data.raw.technology["foundry"].order = "e-g"
data.raw.technology["foundry"].effects = {
    {
        type = "unlock-recipe",
        recipe = "foundry"
    }
}
data.raw.technology["foundry"].unit.count = 500
data.raw.technology["foundry"].unit.time = 60
data.raw.technology["foundry"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-astronomic-science-pack-3", 1},
    {"se-material-science-pack-3", 1},
}

add_categories_to_machines({"crafting-with-fluid-or-metallurgy"}, {"se-space-assembling-machine", "se-space-assembling-machine-grounded", "se-space-manufactory", "se-space-manufactory-grounded"})

data.raw.recipe["turbo-transport-belt"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["turbo-underground-belt"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["turbo-splitter"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["turbo-loader"].category = "crafting-with-fluid-or-metallurgy"
if mods["aai-loaders"] then
    data.raw.recipe["aai-loader"].category = "crafting-with-fluid-or-metallurgy"
    data.raw.recipe["aai-fast-loader"].category = "crafting-with-fluid-or-metallurgy"
    data.raw.recipe["aai-express-loader"].category = "crafting-with-fluid-or-metallurgy"
    data.raw.recipe["aai-turbo-loader"].category = "crafting-with-fluid-or-metallurgy"
end
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

data.raw.fluid["molten-iron"].hidden = true
data.raw.fluid["molten-copper"].hidden = true

data.raw.recipe["pipe"].category = "pressing"
data.raw.recipe["pipe-to-ground"].category = "pressing"
data.raw.recipe["storage-tank"].category = "pressing"
data.raw.recipe["pump"].category = "pressing"
data.raw.recipe["rail-ramp"].category = "pressing"
data.raw.recipe["rail-support"].category = "pressing"
data.raw.recipe["rail"].category = "pressing"
data.raw.recipe["concrete"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["refined-concrete"].category = "crafting-with-fluid-or-metallurgy"

data.raw.recipe["burner-mining-drill"].category = "pressing"
data.raw.recipe["electric-mining-drill"].category = "pressing"
data.raw.recipe["area-mining-drill"].category = "pressing"
data.raw.recipe["se-core-miner-drill"].category = "pressing"

data.raw.recipe["stone-tablet"].category = "pressing"
data.raw.recipe["se-heat-shielding"].category = "pressing"
data.raw.recipe["se-heat-shielding-iridium"].category = "pressing"
data.raw.recipe["se-iron-ingot-to-plate"].category = "pressing"
data.raw.recipe["se-steel-ingot-to-plate"].category = "pressing"
data.raw.recipe["se-copper-ingot-to-plate"].category = "pressing"
data.raw.recipe["se-beryllium-plate"].category = "pressing"
data.raw.recipe["se-holmium-plate"].category = "pressing"
data.raw.recipe["se-iridium-plate"].category = "pressing"

data.raw.recipe["iron-gear-wheel"].category = "pressing"
data.raw.recipe["iron-stick"].category = "pressing"
data.raw.recipe["barrel"].category = "pressing"
data.raw.recipe["motor"].category = "pressing"
data.raw.recipe["engine-unit"].category = "pressing"
data.raw.recipe["low-density-structure"].category = "pressing"
data.raw.recipe["se-low-density-structure-beryllium"].category = "pressing"
data.raw.recipe["se-material-testing-pack"].category = "pressing"
data.raw.recipe["se-heavy-girder"].category = "pressing"
data.raw.recipe["se-heavy-bearing"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["se-heavy-composite"].category = "pressing"
data.raw.recipe["se-heavy-assembly"].category = "crafting-with-fluid-or-metallurgy"
data.raw.recipe["se-aeroframe-pole"].category = "pressing"
data.raw.recipe["se-aeroframe-scaffold"].category = "pressing"
data.raw.recipe["se-aeroframe-bulkhead"].category = "pressing"
data.raw.recipe["se-cargo-rocket-cargo-pod"].category = "pressing"
data.raw.recipe["se-cargo-rocket-fuel-tank"].category = "pressing"

-- ELECTROMAGNETIC PLANT

data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories = {"electromagnetics", "electronics", "electronics-with-fluid", "electronics-or-assembling", "crafting-or-electromagnetics", "space-manufacturing-or-electromagnetics", "space-electromagnetics-or-electromagnetics"}
data.raw.recipe["electromagnetic-plant"].category = "crafting"
data.raw.technology["electromagnetic-plant"].prerequisites = {"se-quantum-processor", "se-aeroframe-bulkhead", "automation-3"}
data.raw.technology["electromagnetic-plant"].order = "e-g"
data.raw.technology["electromagnetic-plant"].unit.count = 500
data.raw.technology["electromagnetic-plant"].unit.time = 60
data.raw.technology["electromagnetic-plant"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"se-astronomic-science-pack-3", 1},
    {"se-energy-science-pack-3", 1},
}

add_categories_to_machines({"space-manufacturing-or-electromagnetics"}, {"se-space-manufactory"})
add_categories_to_machines({"space-electromagnetics-or-electromagnetics"}, {"se-space-electromagnetics-laboratory"})
add_categories_to_machines({"crafting-or-electromagnetics"}, {"assembling-machine-3"})

data.raw.recipe["se-addon-power-pole"].category = "electronics"
data.raw.recipe["se-pylon"].category = "electronics"
data.raw.recipe["se-pylon-substation"].category = "electronics"
data.raw.recipe["se-pylon-construction"].category = "electronics"
data.raw.recipe["se-pylon-construction-radar"].category = "electronics"
data.raw.recipe["roboport"].category = "electronics"
data.raw.recipe["se-supercharger"].category = "electronics"
data.raw.recipe["small-lamp"].category = "electronics"
data.raw.recipe["arithmetic-combinator"].category = "electronics"
data.raw.recipe["decider-combinator"].category = "electronics"
data.raw.recipe["selector-combinator"].category = "electronics"
data.raw.recipe["constant-combinator"].category = "electronics"
data.raw.recipe["power-switch"].category = "electronics"
data.raw.recipe["programmable-speaker"].category = "electronics"
data.raw.recipe["display-panel"].category = "electronics"
data.raw.recipe["aai-signal-sender"].category = "electronics"
data.raw.recipe["aai-signal-receiver"].category = "electronics"

data.raw.recipe["se-space-solar-panel"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["se-space-solar-panel-2"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["se-space-solar-panel-3"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["se-space-accumulator"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["se-space-accumulator-2"].category = "space-manufacturing-or-electromagnetics"
data.raw.recipe["se-compact-beacon"].category = "electronics"
data.raw.recipe["se-compact-beacon-2"].category = "electronics"
data.raw.recipe["se-wide-beacon"].category = "electronics"
data.raw.recipe["se-wide-beacon-2"].category = "electronics"
data.raw.recipe["speed-module"].category = "electronics"
data.raw.recipe["speed-module-2"].category = "electronics"
data.raw.recipe["speed-module-3"].category = "electronics"
data.raw.recipe["speed-module-4"].category = "electronics"
data.raw.recipe["speed-module-5"].category = "electronics"
data.raw.recipe["speed-module-6"].category = "electronics"
data.raw.recipe["speed-module-7"].category = "electronics"
data.raw.recipe["speed-module-8"].category = "electronics-with-fluid"
data.raw.recipe["speed-module-9"].category = "electronics-with-fluid"
data.raw.recipe["efficiency-module"].category = "electronics"
data.raw.recipe["efficiency-module-2"].category = "electronics"
data.raw.recipe["efficiency-module-3"].category = "electronics"
data.raw.recipe["efficiency-module-4"].category = "electronics"
data.raw.recipe["efficiency-module-5"].category = "electronics"
data.raw.recipe["efficiency-module-6"].category = "electronics"
data.raw.recipe["efficiency-module-7"].category = "electronics"
data.raw.recipe["efficiency-module-8"].category = "electronics-with-fluid"
data.raw.recipe["efficiency-module-9"].category = "electronics-with-fluid"
data.raw.recipe["productivity-module"].category = "electronics"
data.raw.recipe["productivity-module-2"].category = "electronics"
data.raw.recipe["productivity-module-3"].category = "electronics"
data.raw.recipe["productivity-module-4"].category = "electronics"
data.raw.recipe["productivity-module-5"].category = "electronics"
data.raw.recipe["productivity-module-6"].category = "electronics"
data.raw.recipe["productivity-module-7"].category = "electronics"
data.raw.recipe["productivity-module-8"].category = "electronics-with-fluid"
data.raw.recipe["productivity-module-9"].category = "electronics-with-fluid"

data.raw.recipe["flying-robot-frame"].category = "electronics"
data.raw.recipe["electric-motor"].category = "electronics"
data.raw.recipe["electric-engine-unit"].category = "electronics-with-fluid"
data.raw.recipe["se-superconductive-cable"].category = "space-electromagnetics-or-electromagnetics"
data.raw.recipe["se-dynamic-emitter"].category = "space-electromagnetics-or-electromagnetics"
data.raw.recipe["se-processing-unit-holmium"].category = "electronics-with-fluid"
data.raw.recipe["se-quantum-processor"].category = "space-electromagnetics-or-electromagnetics"
data.raw.recipe["satellite"].category = "electronics"
data.raw.recipe["rocket-control-unit"].category = "electronics"

data.raw.recipe["discharge-defense-equipment"].category = "crafting"