Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	for k,v in pairs(Config.pos) do 
		local model = v.model
		RequestModel(model)
		while not HasModelLoaded(model) do Citizen.Wait(10) end

		local vehiclespawn = CreateVehicle(model, v.x, v.y, v.z, v.h,true, true)
		SetVehicleNumberPlateText(vehiclespawn, "Concess")
		SetVehicleDoorsLocked(vehiclespawn, 2)
		Citizen.Wait(100)
	end
end)

Citizen.CreateThread(function()
	if Config.VoitureTourne then
		while true do
			Citizen.Wait(750)
			local pos = GetEntityCoords(GetPlayerPed(-1))
			local dist = #(pos - Config.PosConcess)

			if dist < 10 then
				local rotation = 0
				local vehicle = GetClosestVehicle(pos['x'], pos['y'], pos['z'], 5.001, 0, 70)
				if DoesEntityExist(vehicle) then
					for k = 0.0,359.0 do
						local rotation = rotation + k
						SetEntityHeading(vehicle, rotation)
						Citizen.Wait(20)
					end
				end
			end
		end
	end
end)