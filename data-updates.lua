data.raw["mining-drill"]["area-mining-drill"]["drops_full_belt_stacks"] = true
data.raw["mining-drill"]["se-core-miner-drill"]["drops_full_belt_stacks"] = true

data.raw.recipe["stack-inserter"].ingredients = {
    {type = "item", name = "bulk-inserter", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
    {type = "item", name = "se-aeroframe-pole", amount = 1},
    {type = "item", name = "se-vitamelange-extract", amount = 2},
}

for _, loader in pairs(data.raw["loader-1x1"]) do
    loader.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
    loader.adjustable_belt_stack_size = true
    loader.wait_for_full_stack = true
end

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

if mods["aai-loaders"] then
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

data.raw.item["cryogenic-plant"].subgroup = "chemistry"
data.raw.item["cryogenic-plant"].stack_size = 10
data.raw["assembling-machine"]["cryogenic-plant"].module_slots = 6

data.raw.recipe["cryogenic-plant"].ingredients = {
    {type = "item", name = "refined-concrete", amount = 10},
    {type = "item", name = "chemical-plant", amount = 1},
    {type = "item", name = "processing-unit", amount = 8},
    {type = "item", name = "steel-plate", amount = 20},
    {type = "item", name = "glass", amount = 16}
}

data.raw["assembling-machine"]["foundry"].effect_receiver.base_effect.productivity = 0.2

data.raw.recipe["foundry"].ingredients = {
    {type = "item", name = "se-heavy-composite", amount = 16},
    {type = "item", name = "processing-unit", amount = 8},
    {type = "item", name = "se-casting-machine", amount = 1},
    {type = "item", name = "se-aeroframe-bulkhead", amount = 16},
    {type = "fluid", name = "lubricant", amount = 80}
}

data.raw.item["electromagnetic-plant"].subgroup = "assembling"
data.raw["assembling-machine"]["electromagnetic-plant"].effect_receiver.base_effect.productivity = 0.2
data.raw.recipe["electromagnetic-plant"].ingredients = {
    {type = "item", name = "se-holmium-solenoid", amount = 38},
    {type = "item", name = "se-aeroframe-bulkhead", amount = 24},
    {type = "item", name = "se-quantum-processor", amount = 24},
    {type = "item", name = "refined-concrete", amount = 48},
    {type = "item", name = "assembling-machine-3", amount = 1}
}