//Food
/datum/job/bartender
	title = "Bartender"
	flag = BARTENDER
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/civilian
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_bar)
	alt_titles = list("Barista")


/datum/job/bartender/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	switch(H.backbag)
		if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
		if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
		if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		if(5) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/messenger(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/bartender(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/device/pda/bar(H), slot_belt)
	if(has_alt_title(H, alt_title,"Bartender"))
		var/obj/item/weapon/permit/gun/bar/permit = new(H)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(permit, slot_l_hand)
		else
			H.equip_to_slot_or_del(permit, slot_in_backpack)
		permit.set_name(H.real_name)
	return 1



/datum/job/chef
	title = "Chef"
	flag = CHEF
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/civilian
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_kitchen)
	alt_titles = list("Cook")


/datum/job/chef/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/chef(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/chef(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/chefhat(H), slot_head)
	H.equip_to_slot_or_del(new /obj/item/device/pda/chef(H), slot_belt)
	return 1



/datum/job/hydro
	title = "Gardener"
	flag = BOTANIST
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/civilian
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_hydroponics)
	alt_titles = list("Hydroponicist")


/datum/job/hydro/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/hydroponics(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/botanic_leather(H), slot_gloves)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/apron(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/device/analyzer/plant_analyzer(H), slot_s_store)
	H.equip_to_slot_or_del(new /obj/item/device/pda/botanist(H), slot_belt)
	switch(H.backbag)
		if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/hydroponics(H), slot_back)
		if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/hyd(H), slot_back)
		if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		if(5) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/messenger/hyd(H), slot_back)
	return 1



//Cargo
/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department = "Cargo"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/cargo/head
	economic_modifier = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	alt_titles = list("Supply Chief")

	ideal_character_age = 40


/datum/job/qm/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo(H), slot_l_ear)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/cargo(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/device/pda/quartermaster(H), slot_belt)
//	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses(H), slot_glasses)
	H.equip_to_slot_or_del(new /obj/item/weapon/clipboard(H), slot_l_hand)
	return 1



/datum/job/cargo_tech
	title = "Cargo Technician"
	flag = CARGOTECH
	department = "Cargo"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/cargo
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting)

/datum/job/cargo_tech/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo(H), slot_l_ear)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/cargotech(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/device/pda/cargo(H), slot_belt)
//	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
	return 1



/datum/job/mining
	title = "Shaft Miner"
	flag = MINER
	department = "Cargo"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/cargo
	economic_modifier = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	minimal_access = list(access_mining, access_mining_station, access_mailsorting)
	alt_titles = list("Drill Technician","Prospector")

/datum/job/mining/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo (H), slot_l_ear)
	switch(H.backbag)
		if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/industrial(H), slot_back)
		if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/eng(H), slot_back)
		if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		if(5) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/messenger/engi(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/miner(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/device/pda/shaftminer(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
//	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
	if(H.backbag == 1)
		H.equip_to_slot_or_del(new /obj/item/weapon/crowbar(H), slot_l_hand)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/bag/ore(H), slot_l_store)
	else
		H.equip_to_slot_or_del(new /obj/item/weapon/crowbar(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/bag/ore(H), slot_in_backpack)
	return 1

/datum/job/mining/equip_survival(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.species.equip_survival_gear(H,1)
		return 1

/datum/job/janitor
	title = "Janitor"
	flag = JANITOR
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/civilian
	access = list(access_janitor, access_maint_tunnels)
	minimal_access = list(access_janitor, access_maint_tunnels)
	alt_titles = list("Custodian", "Sanitation Technician")


/datum/job/janitor/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/janitor(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/device/pda/janitor(H), slot_belt)
	return 1



//More or less assistants
/datum/job/librarian
	title = "Librarian"
	flag = LIBRARIAN
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2 // VOREStation Edit. Original number is 1.
	spawn_positions = 2 // VOREStation Edit. Original number is 1.
	supervisors = "the head of personnel"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/civilian
	access = list(access_library, access_maint_tunnels)
	minimal_access = list(access_library)
	alt_titles = list("Journalist", "Professor", "Historian", "Writer")


/datum/job/librarian/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	H.equip_to_slot_or_del(new /obj/item/clothing/under/suit_jacket/red(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/device/pda/librarian(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/black(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/weapon/barcodescanner(H), slot_l_hand)
	return 1



//var/global/lawyer = 0//Checks for another lawyer //This changed clothes on 2nd lawyer, both IA get the same dreds.
/datum/job/lawyer
	title = "Internal Affairs Agent"
	flag = LAWYER
	department = "Civilian"
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "company officials and Corporate Regulations"
	selection_color = "#515151"
	idtype = /obj/item/weapon/card/id/civilian
	economic_modifier = 7
	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_heads)
	minimal_access = list(access_lawyer, access_sec_doors, access_heads)
	minimal_player_age = 7


/datum/job/lawyer/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/ia(H), slot_l_ear)
	switch(H.backbag)
		if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
		if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
		if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		if(5) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/messenger(H), slot_back)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/internalaffairs(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/toggle/internalaffairs(H), slot_wear_suit)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/brown(H), slot_shoes)
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/big(H), slot_glasses)
	H.equip_to_slot_or_del(new /obj/item/device/pda/lawyer(H), slot_belt)
	H.equip_to_slot_or_del(new /obj/item/weapon/storage/briefcase(H), slot_l_hand)

	H.implant_loyalty()


	return 1
