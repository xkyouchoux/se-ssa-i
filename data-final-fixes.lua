local function add_categories_to_machines(categories, machines)
    for _,machine in pairs(machines) do
        if machine then
            for _,category in pairs(categories) do
                table.insert(data.raw["assembling-machine"][machine].crafting_categories, category)
            end
        end
    end
end

local Krastorio2 = mods["Krastorio2"]
local AAILoaders = mods["aai-loaders"] and not settings.startup["aai-loaders-mode"].value == "graphics-only"
local Quality = mods["quality-se"]

local STACKING = settings.startup["sessai-enable-stacking"].value
local TURBO_BELTS = settings.startup["sessai-enable-turbo-belts"].value
local CRYOGENIC_PLANT = settings.startup["sessai-enable-cryogenic-plant"].value
local FOUNDRY = settings.startup["sessai-enable-foundry"].value
local ELECTROMAGNETIC_PLANT = settings.startup["sessai-enable-electromagnetic-plant"].value

local util = require("__space-exploration__.data_util")

util.tech_add_prerequisites("se-medpack", {"automation-science-pack"})

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

-- chemical-plant cryogenic-plant kr-advanced-chemical-plant se-space-biochemical-laboratory se-space-biochemical-laboratory-grounded
-- burner-assembling-machine assembling-machine-1 assembling-machine-2 assembling-machine-3 kr-advanced-assembling-machine se-space-assembling-machine se-space-manufactory "se-space-electromagnetics-laboratory"

add_categories_to_machines({"melting", "chemistry-or-cryogenics", "organic-or-chemistry"}, {"chemical-plant"})

add_categories_to_machines({"cryogenics", "chemistry-or-cryogenics", "organic-or-chemistry"}, {"se-space-biochemical-laboratory", "se-space-biochemical-laboratory-grounded", Krastorio2 and "kr-advanced-chemical-plant"})

add_categories_to_machines({"crafting-with-fluid-or-metallurgy"}, {"se-space-assembling-machine", "se-space-assembling-machine-grounded", "se-space-manufactory", "se-space-manufactory-grounded", Krastorio2 and "kr-advanced-assembling-machine"})
add_categories_to_machines({"pressing", "electronics"}, {"burner-assembling-machine", "assembling-machine-1", Krastorio2 and "kr-advanced-assembling-machine"})
add_categories_to_machines({"crafting-or-electromagnetics", "electronics-with-fluid"}, {"assembling-machine-3", Krastorio2 and "kr-advanced-assembling-machine"})
add_categories_to_machines({"organic-or-hand-crafting"}, {"assembling-machine-2", Krastorio2 and "kr-advanced-assembling-machine"})
add_categories_to_machines({"space-manufacturing-or-electromagnetics"}, {"se-space-manufactory"})
add_categories_to_machines({"space-electromagnetics-or-electromagnetics"}, {"se-space-electromagnetics-laboratory"})
add_categories_to_machines({"metallurgy-or-assembling", "organic-or-assembling", "electronics-or-assembling", "cryogenics-or-assembling"}, {Krastorio2 and "kr-advanced-assembling-machine"})

-- STACK INSERTER

if STACKING then
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

    if Krastorio2 then data.raw.inserter["stack-inserter"].next_upgrade = "kr-superior-inserter" end
else
    data.raw.technology["stack-inserter"] = nil
    data.raw.technology["transport-belt-capacity-1"] = nil
    data.raw.technology["transport-belt-capacity-2"] = nil

    data.raw.recipe["stack-inserter"] = nil
    data.raw.item["stack-inserter"] = nil
    data.raw.inserter["stack-inserter"] = nil
    if not Krastorio2 then data.raw.inserter["bulk-inserter"].next_upgrade = nil else data.raw.recipe["kr-crush-stack-inserter"] = nil end
    if Quality then data.raw.recipe["stack-inserter-recycling"] = nil end
end

-- TURBO BELTS

if TURBO_BELTS then
    data.raw.recipe["turbo-transport-belt"].category = "crafting-with-fluid-or-metallurgy"
    data.raw.recipe["turbo-underground-belt"].category = "crafting-with-fluid-or-metallurgy"
    data.raw.recipe["turbo-splitter"].category = "crafting-with-fluid-or-metallurgy"
    data.raw.recipe["turbo-loader"].category = "crafting-with-fluid-or-metallurgy"
    if AAILoaders then
        data.raw.recipe["aai-turbo-loader"].category = "crafting-with-fluid-or-metallurgy"
    end
else
    data.raw.technology["turbo-transport-belt"] = nil

    data.raw.recipe["turbo-transport-belt"] = nil
    data.raw.item["turbo-transport-belt"] = nil
    data.raw["transport-belt"]["turbo-transport-belt"] = nil
    if Quality then data.raw.recipe["turbo-transport-belt-recycling"] = nil end
    if not Krastorio2 then data.raw["transport-belt"]["express-transport-belt"].next_upgrade = nil else data.raw.recipe["kr-crush-turbo-transport-belt"] = nil end

    data.raw.recipe["turbo-underground-belt"] = nil
    data.raw.item["turbo-underground-belt"] = nil
    data.raw["underground-belt"]["turbo-underground-belt"] = nil
    if Quality then data.raw.recipe["turbo-underground-belt-recycling"] = nil end
    if not Krastorio2 then data.raw["underground-belt"]["express-underground-belt"].next_upgrade = nil else data.raw.recipe["kr-crush-turbo-underground-belt"] = nil end

    data.raw.recipe["turbo-splitter"] = nil
    data.raw.item["turbo-splitter"] = nil
    data.raw.splitter["turbo-splitter"] = nil
    if Quality then data.raw.recipe["turbo-splitter-recycling"] = nil end
    if not Krastorio2 then data.raw["splitter"]["express-splitter"].next_upgrade = nil else data.raw.recipe["kr-crush-turbo-splitter"] = nil end

    data.raw.recipe["turbo-loader"] = nil
    data.raw.item["turbo-loader"] = nil
    data.raw.loader["turbo-loader"] = nil
    if Quality then data.raw.recipe["turbo-loader-recycling"] = nil end
    if not Krastorio2 then data.raw.loader["express-loader"].next_upgrade = nil else data.raw.recipe["kr-crush-turbo-loader"] = nil end

    if AAILoaders then 
        data.raw.technology["aai-turbo-loader"] = nil
        data.raw.recipe["aai-turbo-loader"] = nil
        data.raw.item["aai-turbo-loader"] = nil
        data.raw["loader-1x1"]["aai-turbo-loader"] = nil
    if Quality then data.raw.recipe["aai-turbo-loader-recycling"] = nil end
    if not Krastorio2 then data.raw["loader-1x1"]["aai-express-loader"].next_upgrade = nil else data.raw.recipe["kr-crush-aai-turbo-loader"] = nil end
    end
end

-- CRYOGENIC PLANT

if CRYOGENIC_PLANT then
    data.raw["assembling-machine"]["cryogenic-plant"].crafting_categories = {"chemistry", "cryogenics", "chemistry-or-cryogenics", "melting", "organic-or-chemistry"}

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
else
    data.raw.technology["cryogenic-plant"] = nil
    data.raw.recipe["cryogenic-plant"] = nil
    data.raw.item["cryogenic-plant"] = nil
    data.raw["assembling-machine"]["cryogenic-plant"] = nil
    if Quality then data.raw.recipe["cryogenic-plant-recycling"] = nil end
    if Krastorio2 then data.raw.recipe["kr-crush-cryogenic-plant"] = nil end
end

-- FOUNDRY

if FOUNDRY then
    data.raw["assembling-machine"]["foundry"].crafting_categories = {"metallurgy", "crafting-with-fluid-or-metallurgy", "pressing", "casting"}

    if AAILoaders then
        data.raw.recipe["aai-loader"].category = "crafting-with-fluid-or-metallurgy"
        data.raw.recipe["aai-fast-loader"].category = "crafting-with-fluid-or-metallurgy"
        data.raw.recipe["aai-express-loader"].category = "crafting-with-fluid-or-metallurgy"
    end

    data.raw.recipe["pipe"].category = "pressing"
    data.raw.recipe["pipe-to-ground"].category = "pressing"
    data.raw.recipe["storage-tank"].category = "pressing"
    data.raw.recipe["pump"].category = "pressing"
    data.raw.recipe["rail"].category = "pressing"
    data.raw.recipe["concrete"].category = "crafting-with-fluid-or-metallurgy"
    data.raw.recipe["refined-concrete"].category = "crafting-with-fluid-or-metallurgy"

    data.raw.recipe["burner-mining-drill"].category = "pressing"
    data.raw.recipe["electric-mining-drill"].category = "pressing"
    data.raw.recipe["area-mining-drill"].category = "pressing"
    data.raw.recipe["se-core-miner-drill"].category = "pressing"
    data.raw.recipe["offshore-pump"].category = "pressing"
    data.raw.recipe["pumpjack"].category = "pressing"
    data.raw.recipe["stone-furnace"].category = "pressing"
    data.raw.recipe["steel-furnace"].category = "pressing"
    data.raw.recipe["electric-furnace"].category = "pressing"
    data.raw.recipe["industrial-furnace"].category = "pressing"

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

    if mods["elevated-rails"] then
        data.raw.recipe["rail-ramp"].category = "pressing"
        data.raw.recipe["rail-support"].category = "pressing"
    end

    if Krastorio2 then
        data.raw.recipe["kr-advanced-transport-belt"].category = "pressing"
        data.raw.recipe["kr-superior-transport-belt"].category = "pressing"
        data.raw.recipe["express-underground-belt"].category = "pressing"
        data.raw.recipe["kr-advanced-underground-belt"].category = "pressing"
        data.raw.recipe["kr-superior-underground-belt"].category = "pressing"
        data.raw.recipe["express-splitter"].category = "pressing"
        data.raw.recipe["kr-advanced-splitter"].category = "pressing"
        data.raw.recipe["kr-superior-splitter"].category = "pressing"
        if AAILoaders then
            data.raw.recipe["aai-kr-advanced-loader"].category = "pressing"
            data.raw.recipe["aai-kr-superior-loader"].category = "pressing"
        end
        data.raw.recipe["kr-steel-pipe"].category = "pressing"
        data.raw.recipe["kr-steel-pipe-to-ground"].category = "pressing"
        data.raw.recipe["kr-big-storage-tank"].category = "pressing"
        data.raw.recipe["kr-huge-storage-tank"].category = "pressing"
        data.raw.recipe["kr-steel-pump"].category = "pressing"
        data.raw.recipe["kr-black-reinforced-plate"].category = "pressing"
        data.raw.recipe["kr-white-reinforced-plate"].category = "pressing"

        data.raw.recipe["kr-electric-mining-drill-mk2"].category = "pressing"
        data.raw.recipe["kr-electric-mining-drill-mk3"].category = "pressing"
        data.raw.recipe["kr-quarry-drill"].category = "pressing"
        data.raw.recipe["kr-mineral-water-pumpjack"].category = "pressing"

        data.raw.recipe["kr-steel-gear-wheel"].category = "pressing"
        data.raw.recipe["kr-imersium-gear-wheel"].category = "pressing"
        data.raw.recipe["kr-iron-beam"].category = "pressing"
        data.raw.recipe["kr-steel-beam"].category = "pressing"
        data.raw.recipe["kr-imersium-beam"].category = "pressing"
        data.raw.recipe["kr-inserter-parts"].category = "pressing"
        data.raw.recipe["kr-automation-core"].category = "pressing"

        if data.raw.recipe["kr-loader"] then
            data.raw.recipe["kr-loader"].category = "pressing"
            data.raw.recipe["kr-fast-loader"].category = "pressing"
            data.raw.recipe["kr-express-loader"].category = "crafting-with-fluid-or-metallurgy"
            data.raw.recipe["kr-advanced-loader"].category = "pressing"
            data.raw.recipe["kr-superior-loader"].category = "pressing"
        end
    end
else
    data.raw.technology["foundry"] = nil
    data.raw.recipe["foundry"] = nil
    data.raw.item["foundry"] = nil
    data.raw["assembling-machine"]["foundry"] = nil
    if Quality then data.raw.recipe["foundry-recycling"] = nil end
    if Krastorio2 then data.raw.recipe["kr-crush-foundry"] = nil end
end

-- ELECTROMAGNETIC PLANT

if ELECTROMAGNETIC_PLANT then
    data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories = {"electromagnetics", "electronics", "electronics-with-fluid", "crafting-or-electromagnetics", "space-manufacturing-or-electromagnetics", "space-electromagnetics-or-electromagnetics"}

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
    data.raw.recipe["electronic-circuit-wood"].category = "electronics"
    data.raw.recipe["se-processing-unit-holmium"].category = "electronics-with-fluid"
    data.raw.recipe["se-quantum-processor"].category = "space-electromagnetics-or-electromagnetics"
    data.raw.recipe["satellite"].category = "electronics"
    data.raw.recipe["rocket-control-unit"].category = "electronics"

    data.raw.recipe["discharge-defense-equipment"].category = "crafting"

    if mods["quality-se"] then
        data.raw.recipe["quality-module"].category = "electronics"
        data.raw.recipe["quality-module-2"].category = "electronics"
        data.raw.recipe["quality-module-3"].category = "electronics"
        if data.raw.recipe["quality-module-4"] then    
            data.raw.recipe["quality-module-4"].category = "electronics"
            data.raw.recipe["quality-module-5"].category = "electronics"
            data.raw.recipe["quality-module-6"].category = "electronics"
            data.raw.recipe["quality-module-7"].category = "electronics"
            data.raw.recipe["quality-module-8"].category = "electronics-with-fluid"
            data.raw.recipe["quality-module-9"].category = "electronics-with-fluid"
        end
    end

    if Krastorio2 then
        data.raw.recipe["kr-superior-substation"].category = "electronics"
        data.raw.recipe["kr-tesla-coil"].category = "electronics"
        data.raw.recipe["kr-small-roboport"].category = "electronics"
        data.raw.recipe["kr-big-roboport"].category = "electronics"

        data.raw.recipe["kr-advanced-solar-panel"].category = "electronics-with-fluid"
        data.raw.recipe["kr-energy-storage"].category = "electronics"
        data.raw.recipe["se-kr-rare-metal-electric-motor"].category = "electronics"
        data.raw.recipe["kr-electronic-components"].category = "electronics"
        data.raw.recipe["kr-energy-control-unit"].category = "electronics"
        data.raw.recipe["kr-ai-core"].category = "electronics-with-fluid"
    end
else
    data.raw.technology["electromagnetic-plant"] = nil
    data.raw.recipe["electromagnetic-plant"] = nil
    data.raw.item["electromagnetic-plant"] = nil
    data.raw["assembling-machine"]["electromagnetic-plant"] = nil
    if Quality then data.raw.recipe["electromagnetic-plant-recycling"] = nil end
    if Krastorio2 then data.raw.recipe["kr-crush-electromagnetic-plant"] = nil end
end