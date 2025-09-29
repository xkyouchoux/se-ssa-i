if not mods["Krastorio2"] then
    data:extend({
        {
            type = "recipe",
            name = "turbo-transport-belt",
            category = "crafting-with-fluid-or-metallurgy",
            enabled = false,
            ingredients =
            {
            {type = "item", name = "se-heavy-bearing", amount = 1},
            {type = "item", name = "express-transport-belt", amount = 1},
            {type= "fluid", name = "lubricant", amount = 20}
            },
            results = {{type="item", name="turbo-transport-belt", amount=1}}
        },
        {
            type = "recipe",
            name = "turbo-underground-belt",
            energy_required = 2,
            category = "crafting-with-fluid-or-metallurgy",
            enabled = false,
            ingredients =
            {
            {type = "item", name = "se-heavy-bearing", amount = 4},
            {type = "item", name = "express-underground-belt", amount = 2},
            {type = "fluid", name = "lubricant", amount = 40}
            },
            results = {{type="item", name="turbo-underground-belt", amount=2}}
        },
        {
            type = "recipe",
            name = "turbo-splitter",
            category = "crafting-with-fluid-or-metallurgy",
            enabled = false,
            energy_required = 2,
            ingredients =
            {
            {type = "item", name = "se-heavy-bearing", amount = 3},
            {type = "item", name = "express-splitter", amount = 1},
            {type = "item", name = "processing-unit", amount = 2},
            {type = "fluid", name = "lubricant", amount = 80}
            },
            results = {{type="item", name="turbo-splitter", amount=1}}
        }
    })
end

data:extend({
    {
        type = "recipe",
        name = "foundry",
        category = "crafting-with-fluid",
        enabled = false,
        ingredients =
        {
        {type = "item", name = "se-heavy-composite", amount = 16},
        {type = "item", name = "processing-unit", amount = 8},
        {type = "item", name = "se-casting-machine", amount = 1},
        {type = "item", name = "se-aeroframe-bulkhead", amount = 16},
        {type = "fluid", name = "lubricant", amount = 80}
        },
        energy_required = 10,
        results = {{type="item", name="foundry", amount=1}}
    },
    {
        type = "recipe",
        name = "electromagnetic-plant",
        category = "crafting",
        enabled = false,
        ingredients =
        {
        {type = "item", name = "se-holmium-solenoid", amount = 38},
        {type = "item", name = "se-aeroframe-bulkhead", amount = 24},
        {type = "item", name = "se-quantum-processor", amount = 24},
        {type = "item", name = "refined-concrete", amount = 48},
        {type = "item", name = "assembling-machine-3", amount = 1}
        },
        energy_required = 10,
        results = {{type="item", name="electromagnetic-plant", amount=1}}
    },
    {
        type = "recipe",
        name = "cryogenic-plant",
        category = "crafting",
        enabled = false,
        ingredients =
        {
        {type = "item", name = "refined-concrete", amount = 10},
        {type = "item", name = "chemical-plant", amount = 1},
        {type = "item", name = "processing-unit", amount = 8},
        {type = "item", name = "steel-plate", amount = 20},
        {type = "item", name = mods["Krastorio2"] and "kr-glass" or "glass", amount = 16}
        },
        energy_required = 10,
        results = {{type="item", name="cryogenic-plant", amount=1}}
    },
})