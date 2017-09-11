/obj/structure/closet/secure_closet/medical1
	name = "medicine closet"
	desc = "Filled with medical junk."
	icon_state = "medical1"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_broken = "medicalbroken"
	icon_off = "medicaloff"
	req_access = list(access_medical)


	New()
		..()
		new /obj/item/weapon/storage/box/autoinjectors(src)
		new /obj/item/weapon/storage/box/syringes(src)
		new /obj/item/weapon/reagent_containers/dropper(src)
		new /obj/item/weapon/reagent_containers/dropper(src)
		new /obj/item/weapon/reagent_containers/glass/beaker(src)
		new /obj/item/weapon/reagent_containers/glass/beaker(src)
		new /obj/item/weapon/reagent_containers/glass/bottle/inaprovaline(src)
		new /obj/item/weapon/reagent_containers/glass/bottle/inaprovaline(src)
		new /obj/item/weapon/reagent_containers/glass/bottle/antitoxin(src)
		new /obj/item/weapon/reagent_containers/glass/bottle/antitoxin(src)
		return



/obj/structure/closet/secure_closet/medical2
	name = "anesthetics closet"
	desc = "Used to knock people out."
	icon_state = "medical1"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_broken = "medicalbroken"
	icon_off = "medicaloff"
	req_access = list(access_surgery)


	New()
		..()
		new /obj/item/weapon/tank/anesthetic(src)
		new /obj/item/weapon/tank/anesthetic(src)
		new /obj/item/weapon/tank/anesthetic(src)
		new /obj/item/clothing/mask/breath/medical(src)
		new /obj/item/clothing/mask/breath/medical(src)
		new /obj/item/clothing/mask/breath/medical(src)
		return



/obj/structure/closet/secure_closet/medical3
	name = "medical doctor's locker"
	req_access = list(access_medical_equip)
	icon_state = "securemed1"
	icon_closed = "securemed"
	icon_locked = "securemed1"
	icon_opened = "securemedopen"
	icon_broken = "securemedbroken"
	icon_off = "securemedoff"

	New()
		..()
		if(prob(50))
			new /obj/item/weapon/storage/backpack/medic(src)
		else
			new /obj/item/weapon/storage/backpack/satchel/med(src)
		if(prob(50))
			new /obj/item/weapon/storage/backpack/dufflebag/med(src)
		new /obj/item/clothing/under/rank/nursesuit (src)
		new /obj/item/clothing/head/nursehat (src)
		switch(pick("blue", "green", "purple", "black", "navyblue"))
			if ("blue")
				new /obj/item/clothing/under/rank/medical/blue(src)
				new /obj/item/clothing/head/surgery/blue(src)
			if ("green")
				new /obj/item/clothing/under/rank/medical/green(src)
				new /obj/item/clothing/head/surgery/green(src)
			if ("purple")
				new /obj/item/clothing/under/rank/medical/purple(src)
				new /obj/item/clothing/head/surgery/purple(src)
			if ("black")
				new /obj/item/clothing/under/rank/medical/black(src)
				new /obj/item/clothing/head/surgery/black(src)
			if ("navyblue")
				new /obj/item/clothing/under/rank/medical/navyblue(src)
				new /obj/item/clothing/head/surgery/navyblue(src)
		switch(pick("blue", "green", "purple", "black", "navyblue"))
			if ("blue")
				new /obj/item/clothing/under/rank/medical/blue(src)
				new /obj/item/clothing/head/surgery/blue(src)
			if ("green")
				new /obj/item/clothing/under/rank/medical/green(src)
				new /obj/item/clothing/head/surgery/green(src)
			if ("purple")
				new /obj/item/clothing/under/rank/medical/purple(src)
				new /obj/item/clothing/head/surgery/purple(src)
			if ("black")
				new /obj/item/clothing/under/rank/medical/black(src)
				new /obj/item/clothing/head/surgery/black(src)
			if ("navyblue")
				new /obj/item/clothing/under/rank/medical/navyblue(src)
				new /obj/item/clothing/head/surgery/navyblue(src)
		new /obj/item/clothing/under/rank/medical(src)
		new /obj/item/clothing/under/rank/nurse(src)
		new /obj/item/clothing/under/rank/orderly(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat(src)
		new /obj/item/clothing/suit/storage/toggle/fr_jacket(src)
		new /obj/item/clothing/shoes/white(src)
		new /obj/item/weapon/cartridge/medical(src)
		new /obj/item/device/radio/headset/headset_med(src)
		new /obj/item/device/radio/headset/headset_med/alt(src)
		new /obj/item/clothing/suit/storage/hooded/wintercoat/medical(src)
		new /obj/item/clothing/shoes/boots/winter/medical(src)
		new /obj/item/weapon/storage/box/freezer(src)
		new /obj/item/weapon/storage/box/freezer(src)
		new /obj/item/weapon/storage/box/freezer(src)
		return

/obj/structure/closet/secure_closet/paramedic
	name = "paramedic locker"
	desc = "Supplies for a first responder."
	icon_state = "medical1"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_broken = "medicalbroken"
	icon_off = "medicaloff"
	req_access = list(access_medical_equip)


	New()
		..()
		new /obj/item/weapon/storage/backpack/dufflebag/emt(src)
		new /obj/item/weapon/storage/box/autoinjectors(src)
		new /obj/item/weapon/storage/box/syringes(src)
		new /obj/item/weapon/reagent_containers/glass/bottle/inaprovaline(src)
		new /obj/item/weapon/reagent_containers/glass/bottle/antitoxin(src)
		new /obj/item/weapon/storage/belt/medical/emt(src)
		new /obj/item/clothing/mask/gas(src)
		new /obj/item/clothing/suit/storage/toggle/fr_jacket(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat/emt(src)
		new /obj/item/device/radio/headset/headset_med/alt(src)
		new /obj/item/weapon/cartridge/medical(src)
		new /obj/item/weapon/storage/briefcase/inflatable(src)
		new /obj/item/device/flashlight(src)
		new /obj/item/weapon/tank/emergency/oxygen/engi(src)
		new /obj/item/clothing/glasses/hud/health(src)
		new /obj/item/device/healthanalyzer(src)
		new /obj/item/device/radio/off(src)
		new /obj/random/medical(src)
		new /obj/item/weapon/crowbar(src)
		new /obj/item/weapon/extinguisher/mini(src)
		new /obj/item/weapon/storage/box/freezer(src)
		new /obj/item/clothing/accessory/storage/white_vest(src)
		return

/obj/structure/closet/secure_closet/CMO
	name = "chief medical officer's locker"
	req_access = list(access_cmo)
	icon_state = "cmosecure1"
	icon_closed = "cmosecure"
	icon_locked = "cmosecure1"
	icon_opened = "cmosecureopen"
	icon_broken = "cmosecurebroken"
	icon_off = "cmosecureoff"

	New()
		..()
		if(prob(50))
			new /obj/item/weapon/storage/backpack/medic(src)
		else
			new /obj/item/weapon/storage/backpack/satchel/med(src)
		if(prob(50))
			new /obj/item/weapon/storage/backpack/dufflebag/med(src)
		new /obj/item/clothing/suit/bio_suit/cmo(src)
		new /obj/item/clothing/head/bio_hood/cmo(src)
		new /obj/item/clothing/shoes/white(src)
		switch(pick("blue", "green", "purple", "black", "navyblue"))
			if ("blue")
				new /obj/item/clothing/under/rank/medical/blue(src)
				new /obj/item/clothing/head/surgery/blue(src)
			if ("green")
				new /obj/item/clothing/under/rank/medical/green(src)
				new /obj/item/clothing/head/surgery/green(src)
			if ("purple")
				new /obj/item/clothing/under/rank/medical/purple(src)
				new /obj/item/clothing/head/surgery/purple(src)
			if ("black")
				new /obj/item/clothing/under/rank/medical/black(src)
				new /obj/item/clothing/head/surgery/black(src)
			if ("navyblue")
				new /obj/item/clothing/under/rank/medical/navyblue(src)
				new /obj/item/clothing/head/surgery/navyblue(src)
		new /obj/item/clothing/under/rank/chief_medical_officer(src)
		new /obj/item/clothing/under/rank/chief_medical_officer/skirt(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat/cmo(src)
		new /obj/item/clothing/suit/storage/toggle/labcoat/cmoalt(src)
		new /obj/item/weapon/cartridge/cmo(src)
		new /obj/item/clothing/gloves/sterile/latex(src)
		new /obj/item/clothing/shoes/brown	(src)
		new /obj/item/device/radio/headset/heads/cmo(src)
		new /obj/item/device/radio/headset/heads/cmo/alt(src)
		new /obj/item/device/flash(src)
		new /obj/item/weapon/reagent_containers/hypospray/vr(src) //VOREStation Edit - MKII Hypospray
		new /obj/item/weapon/reagent_containers/glass/beaker/vial/vr(src) //VOREStation Edit - A vial for hypo
		new /obj/item/clothing/suit/storage/hooded/wintercoat/medical(src)
		new /obj/item/clothing/shoes/boots/winter/medical(src)
		new /obj/item/weapon/storage/box/freezer(src)
		new /obj/item/clothing/mask/gas(src)
		return



/obj/structure/closet/secure_closet/animal
	name = "animal control closet"
	req_access = list(access_surgery)


	New()
		..()
		new /obj/item/device/assembly/signaler(src)
		new /obj/item/device/radio/electropack(src)
		new /obj/item/device/radio/electropack(src)
		new /obj/item/device/radio/electropack(src)
		return



/obj/structure/closet/secure_closet/chemical
	name = "chemical closet"
	desc = "Store dangerous chemicals in here."
	icon_state = "medical1"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_broken = "medicalbroken"
	icon_off = "medicaloff"
	req_access = list(access_chemistry)


	New()
		..()
		new /obj/item/clothing/under/rank/psych(src)
		new /obj/item/clothing/under/rank/psych/turtleneck(src)
		new /obj/item/clothing/suit/straight_jacket(src)
		new /obj/item/weapon/reagent_containers/glass/bottle/stoxin(src)
		new /obj/item/weapon/reagent_containers/syringe(src)
		new /obj/item/weapon/storage/pill_bottle/citalopram(src)
		new /obj/item/weapon/reagent_containers/pill/methylphenidate(src)
		new /obj/item/weapon/clipboard(src)
		new /obj/item/weapon/folder/white(src)
		new /obj/item/device/taperecorder(src)
		new /obj/item/device/tape/random(src)
		new /obj/item/device/tape/random(src)
		new /obj/item/device/tape/random(src)
		new /obj/item/device/camera(src)
		new /obj/item/toy/therapy_blue(src)
		new /obj/item/weapon/storage/fancy/vials(src) //VOREStation Edit - adding vials for new hypo
		return

/obj/structure/closet/secure_closet/psych
	name = "psychiatric closet"
	desc = "Store psychology tools and medicines in here."
	icon_state = "medical1"
	icon_closed = "medical"
	icon_locked = "medical1"
	icon_opened = "medicalopen"
	icon_broken = "medicalbroken"
	icon_off = "medicaloff"
	req_access = list(access_psychiatrist)


	New()
		..()
		new /obj/item/weapon/storage/box/pillbottles(src)
		new /obj/item/weapon/storage/box/pillbottles(src)
		return

/obj/structure/closet/secure_closet/medical_wall
	name = "first aid closet"
	desc = "It's a secure wall-mounted storage unit for first aid supplies."
	icon_state = "medical_wall_locked"
	icon_closed = "medical_wall_unlocked"
	icon_locked = "medical_wall_locked"
	icon_opened = "medical_wall_open"
	icon_broken = "medical_wall_spark"
	icon_off = "medical_wall_off"
	anchored = 1
	density = 0
	wall_mounted = 1
	req_access = list(access_medical_equip)

/obj/structure/closet/secure_closet/medical_wall/update_icon()
	if(broken)
		icon_state = icon_broken
	else
		if(!opened)
			if(locked)
				icon_state = icon_locked
			else
				icon_state = icon_closed
		else
			icon_state = icon_opened
