RegisterCommand('dmv', function(PID, args, rawCommand)

    -- Get the player's ped
    local playerPed = GetPlayerPed(tonumber(PID))

    -- Get the player's vehicle
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    -- Check if the player is in a vehicle
    if DoesEntityExist(vehicle) then
        -- Delete the vehicle
        DeleteEntity(vehicle)
        TriggerClientEvent('chat:addMessage', PID, { args = { '^1Success:', 'Your vehicle has been deleted.' } })
    else
        TriggerClientEvent('chat:addMessage', PID, { args = { '^1Error:', 'You are not in a vehicle.' } })
    end
end, false)
