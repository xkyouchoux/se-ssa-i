local recipes = {
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
}

if not mods["Krastorio2"] then
    data:extend(recipes)
end
