if not mods["aai-loaders"] and not mods["Krastorio2"] then return end
if settings.startup["aai-loaders-mode"].value == "graphics-only" then return end

local recipe = 
{
    crafting_category = "crafting-with-fluid-or-metallurgy",
    ingredients =
    {
        {type = "item", name = "se-heavy-bearing", amount = 5},
        {type = "item", name = "aai-express-loader", amount = 1},
        {type = "item", name = "processing-unit", amount = 5},
        {type = "item", name = "electric-engine-unit", amount = 5},
        {type= "fluid", name = "lubricant", amount = 160}
    },
    energy_required = 2
}
local expensive_recipe = 
{
    crafting_category = "crafting-with-fluid-or-metallurgy",
    ingredients =
    {
        {type = "item", name = "se-heavy-bearing", amount = 50},
        {type = "item", name = "aai-express-loader", amount = 1},
        {type = "item", name = "processing-unit", amount = 50},
        {type = "item", name = "electric-engine-unit", amount = 50},
        {type= "fluid", name = "lubricant", amount = 1600}
    },
    energy_required = 2
}
local turbo_specs = {
    name = "turbo",
    transport_belt = "turbo-transport-belt",
    color = { 155, 182, 0 },
    fluid = "lubricant",
    fluid_per_minute = "0.25",
    technology = {
    prerequisites = { "turbo-transport-belt", "aai-express-loader"},
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
        time = 15
        }
    },
    recipe = recipe,
    expensive_recipe = expensive_recipe
}

if not data.raw.item["aai-turbo-loader"] then
    AAILoaders.make_tier(turbo_specs)
else
    data.raw.technology["aai-turbo-loader"].prerequisites = turbo_specs.prerequisites
    data.raw.technology["aai-turbo-loader"].unit = turbo_specs.unit
    if settings.startup["aai-loaders-mode"].value == "expensive" then
        data.raw.recipe["aai-turbo-loader"].crafting_category = turbo_specs.expensive_recipe.crafting_category
        data.raw.recipe["aai-turbo-loader"].ingredients = turbo_specs.expensive_recipe.ingredients
    else
        data.raw.recipe["aai-turbo-loader"].crafting_category = turbo_specs.recipe.crafting_category
        data.raw.recipe["aai-turbo-loader"].ingredients = turbo_specs.recipe.ingredients
    end
end