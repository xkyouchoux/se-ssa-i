local technologies = {
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
}

if not mods["Krastorio2"] then
    data:extend(technologies)
end
