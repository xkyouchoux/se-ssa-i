local Krastorio2 = mods["Krastorio2"]
local AAILoaders = mods["aai-loaders"] and not settings.startup["aai-loaders-mode"].value == "graphics-only"

local util = require("__space-exploration__.data_util")

local prod_bonus = settings.startup["sessai-base-productivity-bonus"].value / 100

local category_map = {
    ["chemistry-or-cryogenics"] = "chemistry",
    ["metallurgy-or-assembling"] = "crafting-with-fluid",
    ["organic-or-assembling"] = "crafting-with-fluid",
    ["organic-or-chemistry"] = "chemistry",
    ["electronics-or-assembling"] = "crafting-with-fluid",
    ["cryogenics-or-assembling"] = "crafting-with-fluid"
}

for _,recipe in pairs(data.raw.recipe) do
    if category_map[recipe.category] then recipe.category = category_map[recipe.category] end
end

-- STACK INSERTERS

if settings.startup["sessai-enable-stacking"].value then
    data.raw["mining-drill"]["area-mining-drill"]["drops_full_belt_stacks"] = true
    data.raw["mining-drill"]["se-core-miner-drill"]["drops_full_belt_stacks"] = true

    if Krastorio2 then
        data.raw["inserter"]["kr-superior-inserter"].wait_for_full_stack = true
        data.raw["inserter"]["kr-superior-inserter"].max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
        data.raw["inserter"]["kr-superior-long-inserter"].wait_for_full_stack = true
        data.raw["inserter"]["kr-superior-long-inserter"].max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
    end

    data.raw.item["stack-inserter"].order = "g[stack-inserter]"

    data.raw.recipe["stack-inserter"].ingredients = {
        {type = "item", name = "bulk-inserter", amount = 1},
        {type = "item", name = "processing-unit", amount = 1},
        {type = "item", name = "se-aeroframe-pole", amount = 1},
        {type = "item", name = "se-vitamelange-extract", amount = 2},   
    }

    if Krastorio2 then
        util.replace_or_add_ingredient("kr-superior-inserter", "bulk-inserter", "stack-inserter", 1)
        util.replace_or_add_ingredient("kr-superior-long-inserter", "bulk-inserter", "stack-inserter", 1)
    end

    if settings.startup["sessai-enable-loader-stacking"].value then
        for _, loader in pairs(data.raw["loader-1x1"]) do
            loader.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
            loader.adjustable_belt_stack_size = true
            loader.wait_for_full_stack = true
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

    if Krastorio2 then
        data.raw.technology["kr-superior-inserters"].prerequisites = {"se-heavy-bearing", "se-aeroframe-scaffold", "stack-inserter"}
    end
end

-- TURBO BELTS

if settings.startup["sessai-enable-turbo-belts"].value then 
    data.raw.item["turbo-transport-belt"].subgroup = "transport-belt"
    data.raw.item["turbo-underground-belt"].subgroup = "underground-belt"
    data.raw.item["turbo-splitter"].subgroup = "splitter"

    data.raw.recipe["turbo-transport-belt"].ingredients = {
        {type = "item", name = "se-heavy-bearing", amount = 1},
        {type = "item", name = "express-transport-belt", amount = 1},
        {type = "fluid", name = "lubricant", amount = 20},
    }

    data.raw.recipe["turbo-underground-belt"].ingredients = {
        {type = "item", name = "se-heavy-bearing", amount = 4},
        {type = "item", name = "express-underground-belt", amount = 2},
        {type = "fluid", name = "lubricant", amount = 40},
    }

    data.raw.recipe["turbo-splitter"].ingredients = {
        {type = "item", name = "se-heavy-bearing", amount = 3},
        {type = "item", name = "express-splitter", amount = 1},
        {type = "item", name = "processing-unit", amount = 2},
        {type = "fluid", name = "lubricant", amount = 80},
    }

    if AAILoaders then
        if settings.startup["aai-loaders-mode"].value == "expensive" then
            data.raw.recipe["aai-turbo-loader"].ingredients = {
                {type = "item", name = "se-heavy-bearing", amount = 50},
                {type = "item", name = "aai-express-loader", amount = 1},
                {type = "item", name = "processing-unit", amount = 50},
                {type = "item", name = "electric-engine-unit", amount = 50},
                {type = "fluid", name = "lubricant", amount = 1600},
            }
        else
            data.raw.recipe["aai-turbo-loader"].ingredients = {
                {type = "item", name = "se-heavy-bearing", amount = 5},
                {type = "item", name = "aai-express-loader", amount = 1},
                {type = "item", name = "processing-unit", amount = 5},
                {type = "item", name = "electric-engine-unit", amount = 5},
                {type = "fluid", name = "lubricant", amount = 160},
            }
        end
    end

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
end

-- CRYOGENIC PLANT

if settings.startup["sessai-enable-cryogenic-plant"].value then 
    data.raw.item["cryogenic-plant"].order = "e[chemical-plant]-a[cryogenic-plant]"
    data.raw.item["cryogenic-plant"].subgroup = "chemistry"
    data.raw.item["cryogenic-plant"].stack_size = 10
    data.raw["assembling-machine"]["cryogenic-plant"].module_slots = Krastorio2 and 3 or 6

    data.raw.recipe["cryogenic-plant"].ingredients = {
        {type = "item", name = "refined-concrete", amount = 10},
        {type = "item", name = "chemical-plant", amount = 1},
        {type = "item", name = "processing-unit", amount = 8},
        {type = "item", name = "steel-plate", amount = 20},
        {type = "item", name = Krastorio2 and "kr-glass" or "glass", amount = 16}
    }

    if Krastorio2 then
        util.replace_or_add_ingredient("kr-advanced-chemical-plant", "chemical-plant", "cryogenic-plant", 2)
    end

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
end

-- FOUNDRY

if settings.startup["sessai-enable-foundry"].value then 
    data.raw["assembling-machine"]["foundry"].effect_receiver.base_effect.productivity = prod_bonus

    data.raw.recipe["foundry"].ingredients = {
        {type = "item", name = "se-heavy-composite", amount = 16},
        {type = "item", name = "processing-unit", amount = 8},
        {type = "item", name = "se-casting-machine", amount = 1},
        {type = "item", name = "se-aeroframe-bulkhead", amount = 16},
        {type = "fluid", name = "lubricant", amount = 80}
    }

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
end

-- ELECTROMAGNETIC PLANT

if settings.startup["sessai-enable-electromagnetic-plant"].value then 
    data.raw.item["electromagnetic-plant"].subgroup = "assembling"
    data.raw["assembling-machine"]["electromagnetic-plant"].effect_receiver.base_effect.productivity = prod_bonus
    data.raw.recipe["electromagnetic-plant"].ingredients = {
        {type = "item", name = "se-holmium-solenoid", amount = 38},
        {type = "item", name = "se-aeroframe-bulkhead", amount = 24},
        {type = "item", name = "se-quantum-processor", amount = 24},
        {type = "item", name = "refined-concrete", amount = 48},
        {type = "item", name = "assembling-machine-3", amount = 1}
    }

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
end