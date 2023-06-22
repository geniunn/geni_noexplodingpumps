Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())
        for k, v in pairs(Config.PumpModels) do
            local entity = GetClosestObjectOfType(playerCoords, 10.0, v, false, false, false)
            SetEntityInvincible(entity, true)
            FreezeEntityPosition(entity, true)
        end
    end
end)