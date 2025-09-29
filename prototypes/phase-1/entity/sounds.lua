require("sound-util")
local sounds = {}

sounds.electromagnetic_plant =
{
    main_sounds =
    {
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/electromagnetic-plant-warmup.ogg",
            volume = 0.6,
            audible_distance_modifier = 0.6,
        },
        play_for_working_visualisations = {"warm-up"},
        },
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/electromagnetic-plant-loop.ogg",
            volume = 0.6,
            audible_distance_modifier = 0.6,
        },
        play_for_working_visualisations = {"rotation", "rotation-continue"},
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        },
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/electromagnetic-plant-cooldown.ogg",
            volume = 0.8,
            audible_distance_modifier = 0.6,
        },
        play_for_working_visualisations = {"cool-down"},
        },
    },
    sound_accents =
    {
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/emp-arm-retract.ogg",
            volume = 0.35,
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "warm-up",
        frame = 11,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.6),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation",
        frame = 1,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.6),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation",
        frame = 40,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-coil", 2, 0.4),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation",
        frame = 102,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.6),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation",
        frame = 93,
        },
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/emp-bridge-close.ogg", volume = 0.4,
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation",
        frame = 33,
        },
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/emp-bridge-open.ogg", volume = 0.4,
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation",
        frame = 50,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-electric", 5, 0.4),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation",
        frame = 35, --electric sparks to match bridge section close
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-electric", 5, 0.5),
            audible_distance_modifier = 0.5,
        },
        play_for_working_visualisation = "rotation",
        frame = 58,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-slide-stop", 2, 0.4),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation",
        frame = 102,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.4),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation-continue",
        frame = 14,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-slide-stop", 2, 0.4),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "rotation-continue",
        frame = 3,
        },
        {
        sound =
        {
            variations = sound_variations("__se-ssa-i__/sound/entity/electromagnetic-plant/emp-riser-stop", 2, 0.2),
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "cool-down",
        frame = 31,
        },
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/emp-arm-stop.ogg", volume = 0.45,
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "cool-down",
        frame = 12,
        },
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/emp-arm-extend.ogg", volume = 0.5,
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "cool-down",
        frame = 1,
        },
        {
        sound =
        {
            filename = "__se-ssa-i__/sound/entity/electromagnetic-plant/emp-arm-weld.ogg", volume = 0.9,
            audible_distance_modifier = 0.4,
        },
        play_for_working_visualisation = "cool-down-lights",
        frame = 12,
        },
    },
    max_sounds_per_prototype = 2
}

return sounds
