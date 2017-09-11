//
// This event causes a gas leak of phoron, sleeping_agent, or carbon_dioxide in a random unoccupied area.
// One wonders, where did the gas come from? Who knows!  Its SPACE!  But if you want something a touch
// more "explainable" then check out the canister_leak event instead.
//

/datum/event/atmos_leak
	startWhen = 5			// Nobody will actually be in the room, but still give a bit of warning.
	var/area/target_area	// Chosen target area
	var/area/target_turf	// Chosen target turf in target_area
	var/gas_type			// Chosen gas to release
	// Exclude these types and sub-types from targeting eligibilty
	var/list/area/excluded = list(
		/area/shuttle,
		/area/crew_quarters,
		/area/holodeck,
		/area/engineering/engine_room
	)

// Decide which area will be targeted!
/datum/event/atmos_leak/setup()
	var/gas_choices = list("carbon_dioxide", "sleeping_agent") // Annoying
	if(severity >= EVENT_LEVEL_MODERATE)
		gas_choices += "phoron" // Dangerous
	// if(severity >= EVENT_LEVEL_MAJOR)
	// 	gas_choices += "volatile_fuel" // Dangerous and no default atmos setup!
	gas_type = pick(gas_choices)

	// Assemble areas that all exists (See DM reference if you are confused about loop labels)
	var/list/area/grand_list_of_areas = list()
	looping_station_areas:
		for(var/parentpath in global.the_station_areas)
			// Check its not excluded
			for(var/excluded_path in excluded)
				if(ispath(parentpath, excluded_path))
					continue looping_station_areas
			// Otherwise add it and all subtypes that exist on the map to our grand list
			for(var/areapath in typesof(parentpath))
				var/area/A = locate(areapath) // Check if it actually exists
				if(istype(A) && A.z in using_map.player_levels)
					grand_list_of_areas += A

	// Okay, now lets try and pick a target! Lets try 10 times, otherwise give up
	for(var/i in 1 to 10)
		var/area/A = pick(grand_list_of_areas)
		if(is_area_occupied(A))
			log_debug("atmos_leak event: Rejected [A] because it is occupied.")
			continue
		// A good area, great! Lets try and pick a turf
		var/list/turfs = list()
		for(var/turf/simulated/floor/F in A)
			if(turf_clear(F))
				turfs += F
		if(turfs.len == 0)
			log_debug("atmos_leak event: Rejected [A] because it has no clear turfs.")
			continue
		target_area = A
		target_turf = pick(turfs)

	// If we can't find a good target, give up
	if(!target_area)
		log_debug("atmos_leak event: Giving up after too many failures to pick target area")
		kill()
		return

/** Checks if any living humans are in a given area! */
/datum/event/atmos_leak/proc/is_area_occupied(var/area/myarea)
	// Testing suggests looping over human_mob_list is quicker than looping over area contents
	for(var/mob/living/carbon/human/H in human_mob_list)
		if(H.stat >= DEAD) //Conditions for exclusion here, like if disconnected people start blocking it.
			continue
		var/area/A = get_area(H)
		if(A == myarea) //The loc of a turf is the area it is in.
			return 1
	return 0

/datum/event/atmos_leak/announce()
	command_announcement.Announce("Warning, hazardous [gas_data.name[gas_type]] gas leak detected in \the [target_area], evacuate the area and contain the damage!", "Hazard Alert")

/datum/event/atmos_leak/start()
	// Okay, time to actually put the gas in the room!
	// TODO - Would be nice to break a waste pipe perhaps?
	// TODO - Maybe having it released from a single point and thus causing airflow to blow stuff around

	// Fow now just add a bunch of it to the air
	var/datum/gas_mixture/air_contents = new
	air_contents.temperature = T20C + ((severity - 1) * rand(-50, 50))
	air_contents.gas[gas_type] = 10 * MOLES_CELLSTANDARD
	target_turf.assume_air(air_contents)
	playsound(target_turf, 'sound/effects/smoke.ogg', 50, 1)
