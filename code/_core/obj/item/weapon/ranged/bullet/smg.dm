/obj/item/weapon/ranged/bullet/magazine/smg
	name = ".45 bullpup submachine gun"
	icon = 'icons/obj/items/weapons/ranged/smg.dmi'
	icon_state = "inventory_open"

	bullet_speed = 20
	shoot_delay = 1.5

	automatic = TRUE

	bullet_capacity = 1 //One in the chamber

	bullet_type = ".45"

	shoot_sounds = list('sounds/weapons/smg_light/smg.ogg')

	can_wield = FALSE

	override_icon_state = TRUE

/obj/item/weapon/ranged/bullet/magazine/smg/update_icon()
	if(stored_magazine)
		var/obj/item/magazine/M = stored_magazine
		icon_state = "[initial(icon_state)]_[round(length(M.stored_bullets),4)]"
	else
		icon_state = initial(icon_state)

	..()

/obj/item/weapon/ranged/bullet/magazine/smg/get_static_spread() //Base spread
	return 0.1

/obj/item/weapon/ranged/bullet/magazine/smg/get_skill_spread(var/mob/living/L) //Base spread
	return 0.1 - (0.1 * L.get_skill_power(SKILL_RANGED,0,100))


/obj/item/weapon/ranged/bullet/magazine/smg/pdw
	name = "\improper 9mm PDW"
	icon = 'icons/obj/items/weapons/ranged/smg2.dmi'
	icon_state = "inventory"

	bullet_speed = 26
	shoot_delay = 1

	automatic = TRUE

	bullet_capacity = 1 //One in the chamber

	bullet_type = "9mm"

	shoot_sounds = list('sounds/weapons/smg_light/smg.ogg')

	can_wield = FALSE

	override_icon_state = TRUE

/obj/item/weapon/ranged/bullet/magazine/smg/pdw/get_static_spread() //Base spread
	return 0.1

/obj/item/weapon/ranged/bullet/magazine/smg/pdw/get_skill_spread(var/mob/living/L) //Base spread
	return 0.1 - (0.1 * L.get_skill_power(SKILL_RANGED,0,100))