local util = require("__space-exploration__.data_util")

local result = {}

for k,v in pairs(util) do
    result[k] = v
end

function result.add_categories_to_machines(categories, machines)
    for _,machine in pairs(machines) do
        if machine then
            for _,category in pairs(categories) do
                table.insert(data.raw["assembling-machine"][machine].crafting_categories, category)
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

return result