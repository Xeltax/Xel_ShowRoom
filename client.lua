local empla1, empla2, empla3 = false, false, false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

function MenuGestionVehicule()
	local MenuGestion = RageUI.CreateMenu("Gestion véhicule", "Changement des vÉhicules", 1, 1, "commonmenu", "gradient_nav", 255, --[[Rouge]] 0, --[[Vert]] 0, --[[Bleu]] 0);

	local Emplacement1 = RageUI.CreateSubMenu(MenuGestion, "Emplacement 1", "VÉhicule Disponible")
	local Emplacement2 = RageUI.CreateSubMenu(MenuGestion, "Emplacement 2", "VÉhicule Disponible")
	local Emplacement3 = RageUI.CreateSubMenu(MenuGestion, "Emplacement 3", "VÉhicule Disponible")

	local Compact = RageUI.CreateSubMenu(MenuGestion, "Compact", "VÉhicule Disponible")
	local Coupes = RageUI.CreateSubMenu(MenuGestion, "Coupes", "VÉhicule Disponible")
	local Muscle = RageUI.CreateSubMenu(MenuGestion, "Muscle", "VÉhicule Disponible")
	local Offroad = RageUI.CreateSubMenu(MenuGestion, "Offroad", "VÉhicule Disponible")
	local Sedans = RageUI.CreateSubMenu(MenuGestion, "Sedans", "VÉhicule Disponible")
	local Sports = RageUI.CreateSubMenu(MenuGestion, "Sports", "VÉhicule Disponible")
	local Sportsclassics = RageUI.CreateSubMenu(MenuGestion, "Sports Classics", "VÉhicule Disponible")
	local Super = RageUI.CreateSubMenu(MenuGestion, "Super", "VÉhicule Disponible")
	local Suvs = RageUI.CreateSubMenu(MenuGestion, "Suvs", "VÉhicule Disponible")
	local Vans = RageUI.CreateSubMenu(MenuGestion, "Vans", "VÉhicule Disponible")

	

	function RageUI.PoolMenus:Example()
		MenuGestion:IsVisible(function(Items)
			-- Items

			Items:AddButton("Emplacement 1", "Changer le véhicules de l'emplacement 1", { IsDisabled = false }, function(onSelected)
				for k,v in pairs(Config.Emplacement1) do
					DrawMarker(2, v.x, v.y, v.z+2.5, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 255, 255, 50, false, true, 2, nil, nil, false)
				end
			end, Emplacement1)

			Items:AddButton("Emplacement 2", "Changer le véhicules de l'emplacement 2", { IsDisabled = false }, function(onSelected)
				for k,v in pairs(Config.Emplacement2) do
					DrawMarker(2, v.x, v.y, v.z+1.5, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 255, 255, 50, false, true, 2, nil, nil, false)
				end
			end, Emplacement2)

			Items:AddButton("Emplacement 3", "Changer le véhicules de l'emplacement 3", { IsDisabled = false }, function(onSelected)
				for k,v in pairs(Config.Emplacement3) do
					DrawMarker(2, v.x, v.y, v.z+1.3, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 255, 255, 50, false, true, 2, nil, nil, false)
				end
			end, Emplacement3)
	
		end, function(Panels)
		end)
		
		Emplacement1:IsVisible(function(Items)
			Items:AddButton("Compact", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Compact)

			Items:AddButton("Coupes", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Coupes)

			Items:AddButton("Muscle", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Muscle)

			Items:AddButton("Offroad", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Offroad)

			Items:AddButton("Sedans", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Sedans)

			Items:AddButton("Sports", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Sports)

			Items:AddButton("Sports Classics", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Sportsclassics)

			Items:AddButton("Super", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Super)

			Items:AddButton("Suvs", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Suvs)

			Items:AddButton("Vans", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla1 = true
				end
			end, Vans)
		end, function()
			-- Panels
		end)

		Emplacement2:IsVisible(function(Items)
			-- Items
			Items:AddButton("Compact", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Compact)

			Items:AddButton("Coupes", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Coupes)

			Items:AddButton("Muscle", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Muscle)

			Items:AddButton("Offroad", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Offroad)

			Items:AddButton("Sedans", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Sedans)

			Items:AddButton("Sports", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Sports)

			Items:AddButton("Sports Classics", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Sportsclassics)

			Items:AddButton("Super", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Super)

			Items:AddButton("Suvs", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Suvs)

			Items:AddButton("Vans", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla2 = true
				end
			end, Vans)
		end, function()
			-- Panels
		end)

		Emplacement3:IsVisible(function(Items)
			-- Items
			Items:AddButton("Compact", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Compact)

			Items:AddButton("Coupes", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Coupes)

			Items:AddButton("Muscle", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Muscle)

			Items:AddButton("Offroad", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Offroad)

			Items:AddButton("Sedans", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Sedans)

			Items:AddButton("Sports", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Sports)

			Items:AddButton("Sports Classics", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Sportsclassics)

			Items:AddButton("Super", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Super)

			Items:AddButton("Suvs", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Suvs)

			Items:AddButton("Vans", nil, { IsDisabled = false }, function(onSelected)
				if (onSelected) then
					empla3 = true
				end
			end, Vans)
		end, function()
			-- Panels
		end)

		Compact:IsVisible(function(Items)
			-- Items
			if empla1 == true then
				for k,v in pairs(Config.Compact) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Compact) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Compact) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Coupes:IsVisible(function(Items)
			-- Items
			if empla1 == true then
				for k,v in pairs(Config.Coupes) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Coupes) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Coupes) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Muscle:IsVisible(function(Items)
			-- Items
			if empla1 == true then
				for k,v in pairs(Config.Muscle) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Muscle) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Muscle) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Offroad:IsVisible(function(Items)
			-- Items
			if empla1 == true then
				for k,v in pairs(Config.Offroad) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Offroad) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Offroad) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Sedans:IsVisible(function(Items)
			-- Items
			if empla1 == true then
				for k,v in pairs(Config.Sedans) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Sedans) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Sedans) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Sports:IsVisible(function(Items)
			--items
			if empla1 == true then
				for k,v in pairs(Config.Sport) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Sport) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Sport) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Sportsclassics:IsVisible(function(Items)
			-- Items
			if empla1 == true then
				for k,v in pairs(Config.Sportclassique) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Sportclassique) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Sportclassique) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Super:IsVisible(function(Items)
			--items
			if empla1 == true then
				for k,v in pairs(Config.Super) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Super) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Super) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Suvs:IsVisible(function(Items)
			--items
			if empla1 == true then
				for k,v in pairs(Config.Suv) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Suv) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Suv) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)

		Vans:IsVisible(function(Items)
			--items
			if empla1 == true then
				for k,v in pairs(Config.Van) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla2 == true then
				for k,v in pairs(Config.Van) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end

			if empla3 == true then
				for k,v in pairs(Config.Van) do
					Items:AddButton(v.label, nil, { IsDisabled = false }, function(onSelected)
						if (onSelected) then
							TriggerEvent('Xel_ShowRoomV2:SpawnCar', v.model)
							CreateThread(function ()
								RageUI.CloseAll()
							end)
						end
					end)
				end
			end
		end, function()
			-- Panels
		end)
	end

	RageUI.Visible(MenuGestion, not RageUI.Visible(MenuGestion))
end

-- Faire spawn le véhicule
RegisterNetEvent('Xel_ShowRoomV2:SpawnCar')
AddEventHandler('Xel_ShowRoomV2:SpawnCar', function(model)

	RequestModel(model)

	while not HasModelLoaded(model) do Citizen.Wait(10) end

	if empla1 == true then
		for k,v in pairs(Config.Emplacement1) do

			local vehicle = GetClosestVehicle(v.x, v.y, v.z, 5.001, 0, 70)
			DeleteVehicle(vehicle)
			local vehiclespawn = CreateVehicle(model, v.x, v.y, v.z, v.h,true, true)

			SetVehicleNumberPlateText(vehiclespawn, "Concess")
			SetVehicleDoorsLocked(vehiclespawn, 2)
			Citizen.Wait(100)
		end
	end

	if empla2 == true then
		for k,v in pairs(Config.Emplacement2) do

			local vehicle = GetClosestVehicle(v.x, v.y, v.z, 5.001, 0, 70)
			DeleteVehicle(vehicle)
			local vehiclespawn = CreateVehicle(model, v.x, v.y, v.z, v.h,true, true)

			SetVehicleNumberPlateText(vehiclespawn, "Concess")
			SetVehicleDoorsLocked(vehiclespawn, 2)
			Citizen.Wait(100)
		end
	end

	if empla3 == true then
		for k,v in pairs(Config.Emplacement3) do

			local vehicle = GetClosestVehicle(v.x, v.y, v.z, 5.001, 0, 70)
			DeleteVehicle(vehicle)
			local vehiclespawn = CreateVehicle(model, v.x, v.y, v.z, v.h,true, true)

			SetVehicleNumberPlateText(vehiclespawn, "Concess")
			SetVehicleDoorsLocked(vehiclespawn, 2)
			Citizen.Wait(100)
		end
	end

	empla1 = false
	empla2 = false
	empla3 = false

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

Citizen.CreateThread(function()
	while true do
		local wait = 750
		local pos = GetEntityCoords(PlayerPedId())
		local dist = #(pos - Config.PosMarker)
		local marker = Config.PosMarker
		local x, y, z = table.unpack(marker)

		if Config.OnlyforConcess == false then

			if dist < 5 then
				wait = 0
				DrawMarker(21, x, y, z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.5, 0.5, 0.5, 78, 141, 242, 100, true, true, 2, nil, nil, true)

				if dist < 1 then
					wait = 0
					ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour changer les véhicules !")
					if IsControlJustPressed(0, 51) then
						MenuGestionVehicule()
					end
				end
			end
		else if ESX.PlayerData.job and ESX.PlayerData.job.name == 'cardealer' then
			if dist < 5 then
				wait = 0
				DrawMarker(21, x, y, z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.5, 0.5, 0.5, 78, 141, 242, 100, true, true, 2, nil, nil, true)

				if dist < 1 then
					wait = 0
					ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour changer les véhicules !")
					if IsControlJustPressed(0, 51) then
						MenuGestionVehicule()
					end
				end
			end
		end
		end
		Citizen.Wait(wait)
	end
end)