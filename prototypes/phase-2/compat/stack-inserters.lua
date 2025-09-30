local util = require("__se-ssa-i__.data_util")

util.add_stacking_to_drill("area-mining-drill")
util.add_stacking_to_drill("se-core-miner-drill")

data.raw.item["stack-inserter"].order = "g[stack-inserter]"

data.raw.recipe["stack-inserter"].ingredients = {
    {type = "item", name = "bulk-inserter", amount = 1},
    {type = "item", name = "processing-unit", amount = 1},
    {type = "item", name = "se-aeroframe-pole", amount = 1},
    {type = "item", name = "se-vitamelange-extract", amount = 2},   
}
