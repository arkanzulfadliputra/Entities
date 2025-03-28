local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Item%20Spawner/V1/Source.lua"))();



---====== Create item ======---



local tool = LoadCustomInstance("https://github.com/RegularVynixu/Utilities/raw/main/Doors/Item%20Spawner/Assets/Crucifix.rbxm")

local handle = tool.Handle

local size = handle.Size



local offsets = {

    flat_random = CFrame.Angles(math.rad(-90), 0, math.rad(math.random(-360, 360))) + Vector3.new(0, 0, size.Z / 2),

    doorframe = CFrame.Angles(math.rad(-5), 0, 0) + Vector3.new(0, size.Y / 2, 0),

    wall = CFrame.new(0, 0, -size.Z / 2)

}



local item = spawner.Create({

    Item = {

        Name = "Crucifix Guiding",

        Asset = tool,

        DestroyOnPickup = true,

        PickupOnTouch = true

    },

    Prompt = {

        Range = 7,

        Duration = 0,

        LineOfSight = false

    },

    Locations = {

        Dresser = {

            Enabled = false

        },

        Drawer = {

            Enabled = true, Offset = offsets.flat_random

        },

        Table = {

            Enabled = true, Offset = offsets.flat_random

        },

        Chest = {

            Enabled = true, Offset = offsets.flat_random

        },

        Bed = {

            Enabled = false

        },

        Floor = {

            Enabled = false

        },

        Fireplace = {

            Enabled = false

        },

        Doorframe = {

            Enabled = true, Offset = offsets.doorframe

        },

        Wall = {

            Enabled = true, Offset = offsets.wall

        }

    }

})



---====== Spawn item ======---



local currentRoomIndex = game:GetService("Players").LocalPlayer:GetAttribute("CurrentRoom") -- current room number index

local currentRoom = workspace.CurrentRooms[currentRoomIndex] -- current room instance



item:Spawn(currentRoom)
