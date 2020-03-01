-- -- -- Vanilla fuels changes
-- 
if krastorio.general.getSafeSettingValue("kr-rebalance-fuels") then

	---------------------	
	-- -- Coal
		-- data.raw.item["coal"].fuel_category = "chemical"
		-- data.raw.item["coal"].fuel_value = "4MJ" --4
		-- data.raw.item["coal"].fuel_acceleration_multiplier = 1 --empty
		-- data.raw.item["coal"].fuel_top_speed_multiplier = 1 --empty
		data.raw.item["coal"].fuel_emissions_multiplier = 1.25 --empty
	---------------------
	-- -- Solid fuel
		data.raw.item["solid-fuel"].fuel_category = "chemical"
		data.raw.item["solid-fuel"].fuel_value = "12MJ"
		data.raw.item["solid-fuel"].fuel_acceleration_multiplier = 1 --1.2
		data.raw.item["solid-fuel"].fuel_top_speed_multiplier = 1 --1.05
		data.raw.item["solid-fuel"].fuel_emissions_multiplier = 1.1 --empty
	---------------------
	-- -- Rocket fuel
		data.raw.item["rocket-fuel"].fuel_category = "chemical"
		data.raw.item["rocket-fuel"].fuel_value = "100MJ"
		data.raw.item["rocket-fuel"].fuel_acceleration_multiplier = 1 --1.8
		data.raw.item["rocket-fuel"].fuel_top_speed_multiplier = 1 --1.15
		data.raw.item["rocket-fuel"].fuel_emissions_multiplier = 1 --empty
	---------------------
	-- -- Nuclear fuel
		data.raw.item["nuclear-fuel"].fuel_category = "nuclear-fuel"
		data.raw.item["nuclear-fuel"].fuel_value = "1GJ"
		data.raw.item["nuclear-fuel"].fuel_acceleration_multiplier = 1 --2.5
		data.raw.item["nuclear-fuel"].fuel_top_speed_multiplier = 1 --1.15
	---------------------
	
end