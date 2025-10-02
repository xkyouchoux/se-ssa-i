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

function result.sub_sup_icons(icon_main, icon_left, icon_right)

    local results = {{ icon = icon_main, shift = {2, 0}, icon_size = 64 }}
    table.insert(results, { icon = icon_left.icon or icon_left,
                                scale = icon_left.scale or 0.20,
                                shift = icon_left.shift or {-7, -7},
                                icon_size = icon_left.icon_size or 64,
                                draw_background = icon_left.draw_background or true,
                            })

    table.insert(results, { icon = icon_right.icon or icon_right,
                                scale = icon_right.scale or 0.20,
                                shift = icon_right.shift or {9, -7},
                                icon_size = icon_right.icon_size or 64,
                                draw_background = icon_right.draw_background or true,
                            })    
    return results
end

result.production_bonus = settings.startup["sessai-base-productivity-bonus"].value / 100

function result.update_casting_recipe(primary, casting, icons)
    data.raw.recipe[casting].icon = nil
    data.raw.recipe[casting].icons = icons
    data.raw.recipe[casting].order = data.raw.recipe[primary].order and data.raw.recipe[primary].order .. "-casting" 
        or data.raw.item[data.raw.recipe[primary].results[1].name].order .. "-casting"
    data.raw.recipe[casting].group = data.raw.recipe[primary].group
    data.raw.recipe[casting].subgroup = data.raw.recipe[primary].subgroup
    data.raw.recipe[casting].energy_required = data.raw.recipe[primary].energy_required
end

-- SE

-- copper & iron (24 ore = 900 molten)
-- 24 ore -> 900 molten - 37.5 molten per ore
-- 250 molten -> 1 ingot
-- 1 ingot -> 10 plate - 1:1.5 / foundry - 1:1.8

-- 500 molten iron + 8 coal -> 1 steel ingot
-- 1 steel ingot -> 10 steel plate - 1:.75 / foundry - 1:.9

-- titanium (24 ore = 900 molten)

-- K2SE

-- copper & iron
-- 9 ore -> 9 enriched (24 ore = 750 molten)
-- 24 enriched -> 750 molten - 31.25 molten per ore
-- 250 molten -> 1 ingot
-- 1 ingot -> 10 plate - 1 ore -> 1.25 plate / foundry - 1:1.5

-- 700 molten + 6 coke -> 2 steel ingot
-- 1 steel ingot -> 10 steel plate - 1 iron ore -> .89 steel plate /foundry -  1:1.07 

-- titanium (36 ore = 750 molten) (750 molten = 15 plates) (1 plate = 50 molten)



function result.get_glass()
    return mods["Krastorio2"] and "kr-glass" or "glass"
end

function result.get_sand()
    return mods["Krastorio2"] and "kr-sand" or "sand"
end

function result.get_iron_cost(plates)
    return plates * 25
end

function result.get_copper_cost(plates)
    return plates * 25
end

function result.get_iron_cost_for_steel(plates)
    return mods["Krastorio2"] and (plates * 35) or (plates * 50)
end

function result.get_titanium_cost(plates)
    return plates * 50
end


return result