local util = require("__se-ssa-i__.data_util")

util.add_categories_to_machines({
    "pressing",
    "electronics",
}, {
    "burner-assembling-machine",
    "assembling-machine-1",
    "assembling-machine-2",
    "assembling-machine-3",
    "se-space-assembling-machine",
    "se-space-assembling-machine-grounded",
    "se-space-manufactory",
    "se-space-manufactory-grounded"
})

util.add_categories_to_machines({
    "crafting-with-fluid-or-metallurgy",
    "electronics-with-fluid",
}, {
    "assembling-machine-2",
    "assembling-machine-3",
    "se-space-assembling-machine",
    "se-space-assembling-machine-grounded",
    "se-space-manufactory",
    "se-space-manufactory-grounded"
})

util.add_categories_to_machines({"carbon-casting"},{
	"se-casting-machine",
	"se-thermodynamics-laboratory",
	"se-thermodynamics-laboratory-grounded"
})

util.add_categories_to_machines({
    "crafting-or-electromagnetics",
}, {
    "assembling-machine-3",
    "se-space-assembling-machine",
    "se-space-assembling-machine-grounded",
    "se-space-manufactory",
    "se-space-manufactory-grounded",
    "se-space-electromagnetics-laboratory"
})

util.add_categories_to_machines({"space-manufacturing-or-electromagnetics"}, {"se-space-manufactory",})

util.add_categories_to_machines({"space-electromagnetics-or-electromagnetics"}, {"se-space-electromagnetics-laboratory"})

util.add_categories_to_machines({
	"melting",
    "chemistry-or-electromagnetics",
    "chemistry-or-cryogenics",
}, {
    "chemical-plant",
    "se-space-biochemical-laboratory",
    "se-space-biochemical-laboratory-grounded"
})

util.add_categories_to_machines({
    "cryogenics",
}, {
    "se-space-biochemical-laboratory",
    "se-space-biochemical-laboratory-grounded"
})

local recipes_to_remove_additional_categories = {
    "se-molten-iron",
	"se-iron-ingot",
	"se-steel-ingot",
	"se-molten-copper",
	"se-copper-ingot",
	"se-molten-beryllium",
	"se-beryllium-ingot",
	"se-molten-holmium",
	"se-holmium-ingot",
	"se-iridium-blastcake",
	"se-iridium-ingot","electronic-circuit",
	"electronic-circuit-wood",
	"advanced-circuit",
	"processing-unit",
	"se-processing-unit-holmium",
	"se-empty-data",
	"speed-module",
	"speed-module-2",
	"speed-module-3",
	"speed-module-4",
	"speed-module-5",
	"speed-module-6",
	"speed-module-7",
	"speed-module-8",
	"speed-module-9",
	"productivity-module",
	"productivity-module-2",
	"productivity-module-3",
	"productivity-module-4",
	"productivity-module-5",
	"productivity-module-6",
	"productivity-module-7",
	"productivity-module-8",
	"productivity-module-9",
	"efficiency-module",
	"efficiency-module-2",
	"efficiency-module-3",
	"efficiency-module-4",
	"efficiency-module-5",
	"efficiency-module-6",
	"efficiency-module-7",
	"efficiency-module-8",
	"efficiency-module-9"
}

for _,recipe in pairs(recipes_to_remove_additional_categories) do
    if data.raw.recipe[recipe] then data.raw.recipe[recipe].additional_categories = nil end
end

util.set_category_for_recipes("crafting", {
	"discharge-defense-equipment", -- base
})

util.set_category_for_recipes("pressing", {
	"lane-splitter", -- lane-balancers
	"fast-lane-splitter", -- lane-balancers

	"big-mining-drill", -- um-standalone-mining-drill
	
    "aai-loader", -- aai-loaders
    "aai-fast-loader", -- aai-loaders

    "rail-ramp", -- elevated-rails
    "rail-support", -- elevated-rails
})

util.set_category_for_recipes("crafting-with-fluid-or-metallurgy", {
	"express-lane-splitter", -- lane-balancers
	"turbo-lane-splitter", -- lane-balancers

	"aai-express-loader", -- aai-loaders
    "aai-turbo-loader", -- aai-loaders
})

util.set_category_for_recipes("carbon-casting", {
	"se-steel-ingot"
})
