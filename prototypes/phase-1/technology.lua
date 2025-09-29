if not mods["Krastorio2"] then
    data:extend({
        {
            type = "technology",
            name = "turbo-transport-belt",
            icon = "__se-ssa-i__/graphics/technology/turbo-transport-belt.png",
            icon_size = 256,
            effects =
            {
            {
                type = "unlock-recipe",
                recipe = "turbo-transport-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "turbo-underground-belt"
            },
            {
                type = "unlock-recipe",
                recipe = "turbo-splitter"
            },
            },
            prerequisites = {"se-heavy-bearing", "logistics-3"},
            unit =
            {
            count = 500,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"se-rocket-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
                {"se-material-science-pack-2", 1},
            },
            time = 60
            }
        }
    })
end

data:extend({
    {
        type = "technology",
        name = "foundry",
        icon = "__se-ssa-i__/graphics/technology/foundry.png",
        icon_size = 256,
        order = "e-g",
        effects =
        {
        {
            type = "unlock-recipe",
            recipe = "foundry"
        }
        },
        prerequisites = {"se-heavy-composite", "se-aeroframe-bulkhead"},
        unit =
        {
        count = 500,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"se-rocket-science-pack", 1},
            {"space-science-pack", 1},
            {"utility-science-pack", 1},
            {"production-science-pack", 1},
            {"se-astronomic-science-pack-3", 1},
            {"se-material-science-pack-3", 1},
        },
        time = 60
        }
    },
    {
        type = "technology",
        name = "electromagnetic-plant",
        icon = "__se-ssa-i__/graphics/technology/electromagnetic-plant.png",
        icon_size = 256,
        order = "e-g",
        effects =
        {
        {
            type = "unlock-recipe",
            recipe = "electromagnetic-plant",
        }
        },
        prerequisites = {"se-quantum-processor", "se-aeroframe-bulkhead", "automation-3"},
        unit =
        {
        count = 500,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"se-rocket-science-pack", 1},
            {"space-science-pack", 1},
            {"utility-science-pack", 1},
            {"se-astronomic-science-pack-3", 1},
            {"se-energy-science-pack-3", 1},
        },
        time = 60
        }
    },
    {
        type = "technology",
        name = "cryogenic-plant",
        icon = "__se-ssa-i__/graphics/technology/cryogenic-plant.png",
        icon_size = 256,
        order = "e-g",
        effects =
        {
        {
            type = "unlock-recipe",
            recipe = "cryogenic-plant"
        }
        },
        prerequisites = {"space-science-pack"},
        unit =
        {
        count = 200,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"se-rocket-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 60
        }
    },
})