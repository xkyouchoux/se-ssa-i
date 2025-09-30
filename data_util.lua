local util = require("__space-exploration__.data_util")

local result = {}

for k,v in pairs(util) do
    result[k] = v
end

function result.table_contains(table, value)
    for _,v in pairs(table) do
        if v == value then return true end
    end
    return false
end

function result.add_categories_to_machines(categories, machines)
    for _,name in pairs(machines) do
        machine = data.raw["assembling-machine"][name]
        if machine then
            for _,category in pairs(categories) do
                if not result.table_contains(machine.crafting_categories, category) then
                    table.insert(machine.crafting_categories, category)
                end
            end
        end
    end
end

function result.remove_category_from_machines(category, machines)
    for _,machine in pairs(machines) do
        categories = {}
        for _,category_ in pairs(data.raw["assembling-machine"][machine].crafting_categories) do
            if category_ ~= category then table.insert(categories, category_) end
        end
        data.raw["assembling-machine"][machine].crafting_categories = categories
    end
end

function result.add_stacking_to_drill(name)
    if data.raw["mining-drill"][name] then
        data.raw["mining-drill"][name]["drops_full_belt_stacks"] = true
    end
end

function result.set_category_for_recipes(category, recipes)
    for _,recipe in pairs(recipes) do
        if data.raw.recipe[recipe] then data.raw.recipe[recipe].category = category end
    end
end

result.production_bonus = settings.startup["sessai-base-productivity-bonus"].value / 100

return result