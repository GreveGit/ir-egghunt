Config.Eggs = {
    -- Example
    {coords = vector3(123.45, 678.90, 21.0), reward = "chocolateeg"},
    {coords = vector3(x, y, z), reward = "scratchticket"}, -- Example
  }
  
  Config.UseBlips = true
  Config.Blip = {
    sprite = 94,
    color = 5,
    scale = 0.8,
    name = "Egg Hunt Area"
  }
  
  Config.RewardType = "item" -- "item", "money", "xp", "custom"
  Config.EggResetTimer = 3600 -- in seconds