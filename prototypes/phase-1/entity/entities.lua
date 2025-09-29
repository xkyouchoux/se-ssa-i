require ("sound-util")
require ("util")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__se-ssa-i__.prototypes.phase-1.entity.sounds")

local prod_bonus = settings.startup["sessai-base-productivity-bonus"].value / 100

local foundry_pictures = require("__se-ssa-i__.prototypes.phase-1.entity.foundry-pictures")
local electromagnetic_plant_pictures = require("__se-ssa-i__.prototypes.phase-1.entity.electromagnetic-plant-pictures")
local cryogenic_plant_pictures = require("__se-ssa-i__.prototypes.phase-1.entity.cryogenic-plant-pictures")

data:extend({
    {
        type = "assembling-machine",
        name = "foundry",
        icon = "__se-ssa-i__/graphics/icons/foundry.png",
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.2, result = "foundry"},
        fast_replaceable_group = "foundry",
        max_health = 350,
        corpse = "foundry-remnants",
        dying_explosion = "foundry-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["foundry"],
        collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        heating_energy = "300kW",
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 1.3,
        effect_receiver = { base_effect = { productivity = prod_bonus }},
        module_slots = 4,
        icon_draw_specification = {scale = 2, shift = {0, -0.3}},
        icons_positioning =
        {
        {inventory_index = defines.inventory.assembling_machine_modules, shift = {0, 1.25}}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        crafting_categories = {
            "metallurgy", 
            "crafting-or-metallurgy", 
            "crafting-with-fluid-or-metallurgy", 
            "casting"
        },
        crafting_speed = 4,
        energy_source =
        {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 6 }
        },
        energy_usage = "2500kW",
        perceived_performance = {minimum = 0.25, maximum = 20},
        graphics_set = foundry_pictures.graphics_set,
        open_sound = sounds.steam_open,
        close_sound = sounds.steam_close,
        working_sound =
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/foundry/foundry.ogg",
            volume = 0.5,
            audible_distance_modifier = 0.6
        },
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        sound_accents =
        {
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-pipe-out.ogg", volume = 0.9, audible_distance_modifier = 0.4}, frame = 2},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-slide-close.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 18},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-clamp.ogg", volume = 0.45, audible_distance_modifier = 0.3}, frame = 39},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-slide-stop.ogg", volume = 0.7, audible_distance_modifier = 0.4}, frame = 43},
            {sound = {variations = sound_variations("__se-ssa-i__/sound/entity/foundry/foundry-fire-whoosh", 3, 0.8), audible_distance_modifier = 0.3}, frame = 64},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-metal-clunk.ogg", volume = 0.65, audible_distance_modifier = 0.4}, frame = 64},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-slide-open.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 74},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-pipe-in.ogg", volume = 0.75, audible_distance_modifier = 0.4}, frame = 106},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-smoke-puff.ogg", volume = 0.8, audible_distance_modifier = 0.3}, frame = 106},
            {sound = {variations = sound_variations("__se-ssa-i__/sound/entity/foundry/foundry-pour", 2, 0.7)}, frame = 110},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-rocks.ogg", volume = 0.65, audible_distance_modifier = 0.3}, frame = 120},
            {sound = {filename = "__se-ssa-i__/sound/entity/foundry/foundry-blade.ogg", volume = 0.7}, frame = 126},
        },
        max_sounds_per_prototype = 2
        },
        fluid_boxes =
        {
        {
            production_type = "input",
            pipe_picture = util.empty_sprite(),
            pipe_picture_frozen = foundry_pictures.pipe_picture_frozen,
            pipe_covers = pipecoverspictures(),
            always_draw_covers = false,
            enable_working_visualisations = { "input-pipe" },
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-1, 2} }}
        },
        {
            production_type = "input",
            pipe_picture = util.empty_sprite(),
            --pipe_picture_frozen = foundry_pictures.pipe_picture_frozen,
            pipe_covers = pipecoverspictures(),
            always_draw_covers = false,
            enable_working_visualisations = { "input-pipe" },
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {1, 2} }}
        },
        {
            production_type = "output",
            pipe_picture = util.empty_sprite(),
            --pipe_picture_frozen = foundry_pictures.pipe_picture_frozen,
            pipe_covers = pipecoverspictures(),
            always_draw_covers = false,
            enable_working_visualisations = { "output-pipe" },
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {-1, -2} }}
        },
        {
            production_type = "output",
            pipe_picture = util.empty_sprite(),
            pipe_picture_frozen = foundry_pictures.pipe_picture_frozen,
            pipe_covers = pipecoverspictures(),
            always_draw_covers = false,
            enable_working_visualisations = { "output-pipe" },
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {1, -2} }}
        }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        water_reflection =
        {
        pictures = util.sprite_load("__se-ssa-i__/graphics/entity/foundry/foundry-reflection",
        {
            scale = 5,
            shift = {0,2}
        }),
        rotate = false
        }
    },
    {
        type = "assembling-machine",
        name = "electromagnetic-plant",
        icon = "__se-ssa-i__/graphics/icons/electromagnetic-plant.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "electromagnetic-plant"},
        fast_replaceable_group = "electromagnetic-plant",
        max_health = 350,
        corpse = "electromagnetic-plant-remnants",
        dying_explosion = "electromagnetic-plant-explosion",
        icon_draw_specification = {shift = {0, -0.25}},
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["electromagnetic-plant"],
        heating_energy = "100kW",
        effect_receiver = { base_effect = { productivity = prod_bonus }},
        resistances =
        {
        {
            type = "fire",
            percent = 70
        }
        },
        collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
        selection_box = {{-2, -2}, {2, 2}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 0.7,
        fluid_boxes =
        {
        {
            production_type = "input",
            pipe_picture = electromagnetic_plant_pictures.pipe_pictures,
            pipe_picture_frozen = electromagnetic_plant_pictures.pipe_pictures_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 200,
            secondary_draw_orders = { north = -1 },
            pipe_connections = {{ flow_direction="input-output", direction = defines.direction.west, position = {-1.5, 0.5} }}
        },
        {
            production_type = "input",
            pipe_picture = electromagnetic_plant_pictures.pipe_pictures,
            pipe_picture_frozen = electromagnetic_plant_pictures.pipe_pictures_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 200,
            secondary_draw_orders = { north = -1 },
            pipe_connections = {{ flow_direction="input-output", direction = defines.direction.east, position = {1.5, -0.5} }}
        },
        {
            production_type = "output",
            pipe_picture = electromagnetic_plant_pictures.pipe_pictures,
            pipe_picture_frozen = electromagnetic_plant_pictures.pipe_pictures_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 100,
            secondary_draw_orders = { north = -1 },
            pipe_connections = {{ flow_direction="input-output", direction = defines.direction.south, position = {0.5, 1.5} }}
        },
        {
            production_type = "output",
            pipe_picture = electromagnetic_plant_pictures.pipe_pictures,
            pipe_picture_frozen = electromagnetic_plant_pictures.pipe_pictures_frozen,
            pipe_covers = pipecoverspictures(),
            volume = 100,
            secondary_draw_orders = { north = -1 },
            pipe_connections = {{ flow_direction="input-output", direction = defines.direction.north, position = {-0.5, -1.5} }}
        }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        forced_symmetry = "horizontal",
        perceived_performance = {minimum = 0.25, maximum = 10},
        graphics_set = electromagnetic_plant_pictures.graphics_set,
        open_sound = sounds.electric_large_open,
        close_sound = sounds.electric_large_close,
        working_sound = space_age_sounds.electromagnetic_plant,
        crafting_speed = 2,
        crafting_categories = {
            "electromagnetics", 
            "chemistry-or-electromagnetics", 
            "crafting-or-electromagnetics", 
            "crafting-with-fluid-or-electromagnetics", 
            "crafting-or-advanced-electromagnetics"
        },
        energy_source =
        {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 4 }
        },
        energy_usage = "2000kW",
        module_slots = 5,
        icons_positioning =
        {
        {inventory_index = defines.inventory.furnace_modules, shift = {0, 1}}
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        water_reflection = electromagnetic_plant_pictures.water_reflection,
    },
    {
        type = "assembling-machine",
        name = "cryogenic-plant",
        icon = "__se-ssa-i__/graphics/icons/cryogenic-plant.png",
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.2, result = "cryogenic-plant"},
        fast_replaceable_group = "cryogenic-plant",
        max_health = 350,
        corpse = "cryogenic-plant-remnants",
        dying_explosion = "cryogenic-plant-explosion",
        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["cryogenic-plant"],
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        heating_energy = "100kW",
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        damaged_trigger_effect = hit_effects.entity(),
        drawing_box_vertical_extension = 0.4,
        module_slots = 6,
        icons_positioning =
        {
        {inventory_index = defines.inventory.furnace_modules, shift = {0, 0.95}, max_icons_per_row = 4}
        },
        icon_draw_specification = {scale = 2, shift = {0, -0.3}},
        allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
        crafting_categories = {
            "cryogenics",
            "chemistry-or-electromagnetics",
            "chemistry",
            "melting"
        },
        crafting_speed = 2,
        energy_source =
        {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 6 }
        },
        energy_usage = "1500kW",
        graphics_set = cryogenic_plant_pictures.graphics_set,
        open_sound = sounds.metal_large_open,
        close_sound = sounds.metal_large_close,
        working_sound =
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cryogenic-plant.ogg", volume = 0.8
        },
        --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
        fade_in_ticks = 4,
        fade_out_ticks = 30,
        sound_accents =
        {
            {sound = {variations = sound_variations("__se-ssa-i__/sound/entity/cryogenic-plant/cp-smoke-mask-puff", 2, 0.35), audible_distance_modifier = 0.8}, frame = 11},
            {sound = {variations = sound_variations("__se-ssa-i__/sound/entity/cryogenic-plant/cp-smoke-mask-puff", 2, 0.3), audible_distance_modifier = 0.8}, frame = 130},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim3-bubbles-rise.ogg", volume = 0.9, audible_distance_modifier = 0.3}, frame = 14},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim3-bubbles-fall.ogg", volume = 0.7, audible_distance_modifier = 0.3}, frame = 62},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim3-bubbles-rise.ogg", volume = 0.9, audible_distance_modifier = 0.3}, frame = 110},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim3-bubbles-fall.ogg", volume = 0.7, audible_distance_modifier = 0.3}, frame = 158},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim5-gears.ogg", volume = 0.25, audible_distance_modifier = 0.4}, frame = 51},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim5-gears.ogg", volume = 0.2, audible_distance_modifier = 0.4}, frame = 151},
            {sound = {variations = sound_variations("__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim6-open", 2, 0.6), audible_distance_modifier = 0.4}, frame = 3},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim6-close.ogg", volume = 0.7, audible_distance_modifier = 0.4}, frame = 33},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim6-slide-down.ogg", volume = 0.55, audible_distance_modifier = 0.4}, frame = 42},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim6-slide-up.ogg", volume = 0.6, audible_distance_modifier = 0.4}, frame = 126},
            {sound = {filename = "__se-ssa-i__/sound/entity/cryogenic-plant/cp-anim6-slide-stop.ogg", volume = 0.4, audible_distance_modifier = 0.4}, frame = 146},
        },
        max_sounds_per_prototype = 2
        },
        fluid_boxes =
        {
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {-2, 2} }}
        },
        {
            production_type = "input",
            pipe_picture =  cryogenic_plant_pictures.pipe_picture,
            pipe_picture_frozen =  cryogenic_plant_pictures.pipe_picture_frozen,
            always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {0, 2} }}
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            volume = 1000,
            pipe_connections = {{ flow_direction="input", direction = defines.direction.south, position = {2, 2} }}
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {-2, -2} }}
        },
        {
            production_type = "output",
            pipe_picture =  cryogenic_plant_pictures.pipe_picture,
            pipe_picture_frozen =  cryogenic_plant_pictures.pipe_picture_frozen,
            always_draw_covers = true, -- fighting against FluidBoxPrototype::always_draw_covers crazy default
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {0, -2} }}
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            volume = 100,
            pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {2, -2} }}
        }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        water_reflection =
        {
        pictures = util.sprite_load("__se-ssa-i__/graphics/entity/foundry/foundry-reflection",
        {
            scale = 5,
            shift = {0,2}
        }),
        rotate = false,
        }
    },
})