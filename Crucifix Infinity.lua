local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/refs/heads/main/Doors/Crucifix%20Everything/Source.lua"))()

---====== Create crucifix ======---

module.GiveCrucifix({
    Type = 9999999,
    Uses = 9999999, -- nil : infinite uses
    Resist = false,
    EntitiesOnly = true, -- true : custom entities only
    IgnoreList = {}
})
