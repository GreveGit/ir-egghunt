local collectedEggs = {}

-- Event to handle egg collection
RegisterNetEvent('ir-egghunt:collectEgg', function(eggIndex)
    local src = source
    if not collectedEggs[eggIndex] then
        collectedEggs[eggIndex] = true
        TriggerClientEvent('ir-egghunt:syncEggs', -1, collectedEggs) -- Sync with all clients
        TriggerClientEvent('chat:addMessage', src, { args = { '^2You collected an egg!' } }) -- Notify the player
    else
        TriggerClientEvent('chat:addMessage', src, { args = { '^1This egg has already been collected!' } })
    end
end)