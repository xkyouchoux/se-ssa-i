if not data.raw.technology["quality-module"] then return end

data.raw.recipe["quality-module"].category = "crafting-or-electromagnetics"
data.raw.recipe["quality-module-2"].category = "crafting-or-electromagnetics"
data.raw.recipe["quality-module-3"].category = "crafting-or-electromagnetics"
if data.raw.recipe["quality-module-4"] then    
    data.raw.recipe["quality-module-4"].category = "crafting-or-electromagnetics"
    data.raw.recipe["quality-module-5"].category = "crafting-or-electromagnetics"
    data.raw.recipe["quality-module-6"].category = "crafting-or-electromagnetics"
    data.raw.recipe["quality-module-7"].category = "crafting-or-electromagnetics"
    data.raw.recipe["quality-module-8"].category = "crafting-with-fluid-or-electromagnetics"
    data.raw.recipe["quality-module-9"].category = "crafting-with-fluid-or-electromagnetics"
end