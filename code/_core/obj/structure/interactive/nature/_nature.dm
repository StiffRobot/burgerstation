obj/structure/interactive/nature
	var/has_transparency_marker = FALSE

	var/list/crossed_objects = list()

obj/structure/interactive/nature/New()
	..()

	if(has_transparency_marker)
		var/obj/trigger/transparency_trigger/T1 = new(get_step(src,NORTH),src)
		new/obj/trigger/transparency_trigger(get_step(T1,NORTH),src)


obj/structure/interactive/nature/flowers
	name = "flowers"
	icon = 'icons/obj/structure/flora/ausflora.dmi'
	icon_state = "ywflowers_1"
	density = 0

obj/structure/interactive/nature/flowers/New()
	..()
	switch(rand(1,4))
		if(1)
			icon_state = "ywflowers_[rand(1,4)]"
		if(2)
			icon_state = "brflowers_[rand(1,4)]"
		if(3)
			icon_state = "brflowers_[rand(1,3)]"

obj/structure/interactive/nature/grass
	name = "uncut grass"
	icon = 'icons/obj/structure/flora/ausflora.dmi'
	icon_state = "sparsegrass_1"
	density = 0

obj/structure/interactive/nature/grass/New()
	..()
	switch(rand(1,2))
		if(1)
			icon_state = "sparsegrass_[rand(1,3)]"
		if(2)
			icon_state = "fullgrass_[rand(1,3)]"


obj/structure/interactive/nature/grass_bush/New()
	..()
	icon_state = "grassybush_[rand(1,4)]"


obj/structure/interactive/nature/rocks
	name = "rocks"
	icon = 'icons/obj/structure/flora/rocks.dmi'
	icon_state = "rock_1"
	density = 0

obj/structure/interactive/nature/rocks/New()
	..()
	icon_state = "rock_[rand(1,10)]"


obj/structure/interactive/nature/evergreen
	name = "evergreen tree"
	icon = 'icons/obj/structure/flora/evergreen.dmi'
	icon_state = "evergreen_1"

	density = 1
	pixel_x = -16
	pixel_y = 0
	layer = LAYER_LARGE_OBJ

	mouse_opacity = 0

	has_transparency_marker = TRUE



obj/structure/interactive/nature/evergreen/New()
	..()
	icon_state = "evergreen_[rand(1,3)]"