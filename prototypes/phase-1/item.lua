local item_sounds = require("__base__.prototypes.item_sounds")

if not mods["Krastorio2"] then
    data:extend({
        {
            type = "item",
            name = "turbo-transport-belt",
            icon = "__se-ssa-i__/graphics/icons/turbo-transport-belt.png",
            subgroup = "transport-belt",
            color_hint = { text = "4" },
            order = "a[transport-belt]-d[turbo-transport-belt]",
            inventory_move_sound = item_sounds.transport_belt_inventory_move,
            pick_sound = item_sounds.transport_belt_inventory_pickup,
            drop_sound = item_sounds.transport_belt_inventory_move,
            place_result = "turbo-transport-belt",
            stack_size = 100,
            weight = 20*kg
        },
        {
            type = "item",
            name = "turbo-underground-belt",
            icon = "__se-ssa-i__/graphics/icons/turbo-underground-belt.png",
            subgroup = "underground-belt",
            color_hint = { text = "4" },
            order = "b[underground-belt]-d[turbo-underground-belt]",
            inventory_move_sound = item_sounds.mechanical_inventory_move,
            pick_sound = item_sounds.mechanical_inventory_pickup,
            drop_sound = item_sounds.mechanical_inventory_move,
            place_result = "turbo-underground-belt",
            stack_size = 50,
            weight = 40*kg
        },
        {
            type = "item",
            name = "turbo-splitter",
            icon = "__se-ssa-i__/graphics/icons/turbo-splitter.png",
            subgroup = "splitter",
            color_hint = { text = "4" },
            order = "c[splitter]-d[turbo-splitter]",
            inventory_move_sound = item_sounds.mechanical_inventory_move,
            pick_sound = item_sounds.mechanical_inventory_pickup,
            drop_sound = item_sounds.mechanical_inventory_move,
            place_result = "turbo-splitter",
            stack_size = 50,
            weight = 40*kg
        }
    })
end

data:extend({
    {
        type = "item",
        name = "foundry",
        icon = "__se-ssa-i__/graphics/icons/foundry.png",
        subgroup = "smelting-machine",
        order = "d[foundry]",
        inventory_move_sound = item_sounds.steam_inventory_move,
        pick_sound = item_sounds.steam_inventory_pickup,
        drop_sound = item_sounds.steam_inventory_move,
        place_result = "foundry",
        stack_size = 20,
        weight = 200 * kg
    },
    {
        type = "item",
        name = "electromagnetic-plant",
        icon = "__se-ssa-i__/graphics/icons/electromagnetic-plant.png",
        subgroup = "assembling",
        order = "g[electromagnetic-plant]",
        inventory_move_sound = item_sounds.electric_large_inventory_move,
        pick_sound = item_sounds.electric_large_inventory_pickup,
        drop_sound = item_sounds.electric_large_inventory_move,
        place_result = "electromagnetic-plant",
        stack_size = 20,
        weight = 200 * kg
    },
    {
        type = "item",
        name = "cryogenic-plant",
        icon = "__se-ssa-i__/graphics/icons/cryogenic-plant.png",
        subgroup = "chemistry",
        order = "e[chemical-plant]-a[cryogenic-plant]",
        inventory_move_sound = item_sounds.mechanical_large_inventory_move,
        pick_sound = item_sounds.mechanical_large_inventory_pickup,
        drop_sound = item_sounds.mechanical_large_inventory_move,
        place_result = "cryogenic-plant",
        stack_size = 20,
        weight = 200 * kg
    }
})