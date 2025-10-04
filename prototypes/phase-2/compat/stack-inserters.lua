local util = require("__se-ssa-i__.data_util")

util.add_stacking_to_drill("area-mining-drill")
util.add_stacking_to_drill("se-core-miner-drill")

data.raw.item["stack-inserter"].order = "g[stack-inserter]"
