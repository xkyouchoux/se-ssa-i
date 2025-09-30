local util = require("__space-exploration__.data_util")

if not mods["aai-loaders-stacking-filtering"] then
    for _, loader in pairs(data.raw["loader-1x1"]) do
        loader.max_belt_stack_size = data.raw["inserter"]["stack-inserter"].max_belt_stack_size
        loader.adjustable_belt_stack_size = true
        loader.wait_for_full_stack = true
    end
end

data.raw.technology["stack-inserter"].unit.count = 200
data.raw.technology["stack-inserter"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-astronomic-science-pack-1", 1},
    {"se-biological-science-pack-1", 1},
}

data.raw.technology["stack-inserter"].prerequisites = {"se-biological-science-pack-1", "bulk-inserter", "se-aeroframe-pole"}

data.raw.technology["transport-belt-capacity-1"].prerequisites = {"se-biological-science-pack-2", "se-astronomic-science-pack-2", "stack-inserter"}
data.raw.technology["transport-belt-capacity-1"].unit.count = 250
data.raw.technology["transport-belt-capacity-1"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-astronomic-science-pack-2", 1},
    {"se-biological-science-pack-2", 1},
}

data.raw.technology["transport-belt-capacity-2"].prerequisites = {"se-biological-science-pack-4", "se-astronomic-science-pack-4", "transport-belt-capacity-1"}
data.raw.technology["transport-belt-capacity-2"].unit.count = 500
data.raw.technology["transport-belt-capacity-2"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"se-rocket-science-pack", 1},
    {"space-science-pack", 1},
    {"utility-science-pack", 1},
    {"production-science-pack", 1},
    {"se-astronomic-science-pack-4", 1},
    {"se-biological-science-pack-4", 1},
}
