
ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(5000)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)



RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
end)



RegisterNUICallback("ouvrepo", function(data)
    
    if not trfp3 then
        trfp3 = true
        SetVehicleDoorOpen(GetVehiclePedIsIn(PlayerPedId()), 0, false, false)
    elseif trfp3 then
        trfp3 = false
        SetVehicleDoorShut(GetVehiclePedIsIn(PlayerPedId()), 0, false, false)
    end    
end)

RegisterNUICallback("ouvrepo1", function(data)

    if not trfp3 then
        trfp3 = true
        SetVehicleDoorOpen(GetVehiclePedIsIn(PlayerPedId()), 1, false, false)
    elseif trfp3 then
        trfp3 = false
        SetVehicleDoorShut(GetVehiclePedIsIn(PlayerPedId()), 1, false, false)
    end    
end)

RegisterNUICallback("ouvrepo2", function(data)

    if not trfp3 then
        trfp3 = true
        SetVehicleDoorOpen(GetVehiclePedIsIn(PlayerPedId()), 3, false, false)
    elseif trfp3 then
        trfp3 = false
        SetVehicleDoorShut(GetVehiclePedIsIn(PlayerPedId()), 3, false, false)
    end    
end)

RegisterNUICallback("ouvrepo3", function(data)

    if not trfp3 then
        trfp3 = true
        SetVehicleDoorOpen(GetVehiclePedIsIn(PlayerPedId()), 2, false, false)
    elseif trfp3 then
        trfp3 = false
        SetVehicleDoorShut(GetVehiclePedIsIn(PlayerPedId()), 2, false, false)
    end    
end)


RegisterNUICallback("ouvrefe", function(data)

    if not trff4 then
        trff4 = true
        RollDownWindow(GetVehiclePedIsIn(PlayerPedId()), 0) 
    elseif trff4 then
        trff4 = false
        RollUpWindow(GetVehiclePedIsIn(PlayerPedId()), 0) 
    end     
end)

RegisterNUICallback("ouvrefe1", function(data)

    if not trff4 then
        trff4 = true
        RollDownWindow(GetVehiclePedIsIn(PlayerPedId()), 1) 
    elseif trff4 then
        trff4 = false
        RollUpWindow(GetVehiclePedIsIn(PlayerPedId()), 1) 
    end     
end)

RegisterNUICallback("ouvrefe2", function(data)

    if not trff4 then
        trff4 = true
        RollDownWindow(GetVehiclePedIsIn(PlayerPedId()), 2) 
    elseif trff4 then
        trff4 = false
        RollUpWindow(GetVehiclePedIsIn(PlayerPedId()), 2) 
    end     
end)

RegisterNUICallback("ouvrefe3", function(data)

    if not trff4 then
        trff4 = true
        RollDownWindow(GetVehiclePedIsIn(PlayerPedId()), 3) 
    elseif trff4 then
        trff4 = false
        RollUpWindow(GetVehiclePedIsIn(PlayerPedId()), 3) 
    end     
end)

RegisterNUICallback("capot", function(data)

    if not capot then
        capot = true

        SetVehicleDoorOpen(GetVehiclePedIsIn(PlayerPedId()), 4, false, false)
    elseif capot then
        capot = false
        SetVehicleDoorShut(GetVehiclePedIsIn(PlayerPedId()), 4, false, false)
    end   
end)


RegisterNUICallback("coffre", function(data)

    if not coofre then
        coofre = true
        SetVehicleDoorOpen(GetVehiclePedIsIn(PlayerPedId()), 5, false, false)
    elseif coofre then
        coofre = false
        SetVehicleDoorShut(GetVehiclePedIsIn(PlayerPedId()), 5, false, false)
    end   
end)





function epicerie()

    SendNUIMessage({
        action = "showui",
        namecar ="Vehicule : "..GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(PlayerPedId(), 0)))

    })
    SetNuiFocus(true, true)
end

RegisterCommand(Config.commande, function()
    if IsPedSittingInAnyVehicle(PlayerPedId()) then
        epicerie()
    else
        ESX.ShowNotification("Vous devez être dans un véhicule")
    end
end)



