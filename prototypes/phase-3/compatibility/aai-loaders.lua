if not mods["aai-loaders"] then return end

if data.raw.recipe["aai-loader"] then
    data.raw.recipe["aai-loader"].category = "crafting-or-metallurgy"
    data.raw.recipe["aai-fast-loader"].category = "crafting-or-metallurgy"
    data.raw.recipe["aai-express-loader"].category = "crafting-with-fluid-or-metallurgy"
end