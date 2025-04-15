local eggLocations = {
    vector3(123.4, 456.7, 78.9), -- Replace with your desired coordinates
    vector3(223.4, 556.7, 88.9),
    vector3(323.4, 656.7, 98.9)
}

local collectedEggs = {}

-- Function to spawn eggs
local function spawnEggs()
    for i, location in ipairs(eggLocations) do
        if not collectedEggs[i] then
            exports.ox_target:addSphereZone({
                coords = location,
                radius = 1.0,
                options = {
                    {
                        name = 'collect_egg_' .. i,
                        event = 'ir-egghunt:attemptCollectEgg',
                        icon = 'fa-solid fa-egg',
                        label = 'Collect Egg',
                        canInteract = function()
                            return not collectedEggs[i]
                        end
                    }
                }
            })
            CreateObject(`prop_alienegg`, location.x, location.y, location.z - 1.0, false, false, false)
        end
    end
end

-- Event to handle egg collection attempt
RegisterNetEvent('ir-egghunt:attemptCollectEgg', function(data)
    local playerCoords = GetEntityCoords(PlayerPedId())
    for i, location in ipairs(eggLocations) do
        if #(playerCoords - location) < 2.0 and not collectedEggs[i] then
            TriggerServerEvent('ir-egghunt:collectEgg', i) -- Notify the server
            break
        end
    end
end)

-- Event to sync collected eggs
RegisterNetEvent('ir-egghunt:syncEggs', function(serverCollectedEggs)
    collectedEggs = serverCollectedEggs
    for i, collected in pairs(collectedEggs) do
        if collected then
            exports.ox_target:removeZone('collect_egg_' .. i)
        end
    end
end)

-- Initialize the egg hunt
CreateThread(function()
    spawnEggs()
end)