# 🥚 IR-EggHunt - Interactive Resource Easter Egg Hunt Script

Welcome to **IR-EggHunt**! This fun and festive **Easter Egg Hunt** script is part of the *Interactive Resource* (IR) series for **FiveM QBCore-based servers**. It brings a seasonal, customizable scavenger hunt experience where players can collect hidden Easter eggs scattered across the map and earn rewards!

---

## 🐇 Features

- 🌍 **Map-wide Egg Placement**: Place collectible eggs anywhere in the game world.
- 🧠 **Customizable Logic**: Easily configure how many eggs spawn, where, and what rewards they give.
- 🗺️ **Blip Support**: Optional map blips for general egg hunt zones.
- 🏆 **Reward System**: Grant items, money, XP, or custom triggers on egg collection.
- 🔄 **Auto Respawn/Reset**: Automatically reset egg locations after the hunt or server restart.
- 🎨 **Easter-themed Props**: Fun visuals for immersive seasonal vibes.

---

## ⚙️ Configuration

All settings are handled in `config.lua`:

```lua
Config.Eggs = {
  -- Example
  {coords = vector3(123.45, 678.90, 21.0), reward = "chocolate"},
  ...
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
