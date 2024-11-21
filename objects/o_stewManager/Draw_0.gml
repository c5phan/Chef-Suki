if (!end_level) { // Fridge level
	// ExitFridge
	draw_sprite_ext(ExitLevel, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 110,
					camera_get_view_y(view_camera[0]) + 10,0.5,0.5,0,-1,1);
	
	// Setting Popup
	draw_sprite_ext(SettingIcon, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 110,
					camera_get_view_y(view_camera[0]) + 40,0.3,0.3,0,-1,1);
					
	// Task
	draw_sprite_ext(SFTask, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 120,
					camera_get_view_y(view_camera[0]),0.5,0.5,0,-1,1);

	// Inventory

	// need to add if so its only draws when in fridge
	for (i = 0; i < 6; i++) {
		if (inven[i] == 0) {
			name[i] = "";
			drawInvenSlot(inven_empty, i, select, string(0));
		} else {
			if (name[i] == "carrot") {
				drawInvenSlot(inven_carrot, i, select, string(inven[i]));
			} else if (name[i] == "broccoli") {
				drawInvenSlot(inven_broccoli,i,select,string(inven[i]));
			} else if (name[i] == "apple") {
				drawInvenSlot(inven_apple,i,select,string(inven[i]));
			} else if (name[i] == "pickle") {
				drawInvenSlot(inven_pickle,i,select,string(inven[i]));
			} else if (name[i] == "bpepper") {
				drawInvenSlot(inven_bpepper,i,select,string(inven[i]));
			} else if (name[i] == "egg") {
				drawInvenSlot(inven_egg,i,select,string(inven[i]));
			} else if (name[i] == "hummus") {
				drawInvenSlot(inven_hummus,i,select,string(inven[i]));
			} else if (name[i] == "pastry") {
				drawInvenSlot(inven_pastry,i,select,string(inven[i]));
			} else if (name[i] == "salsa") {
				drawInvenSlot(inven_salsa,i,select,string(inven[i]));
			} else if (name[i] == "sourcream") {
				drawInvenSlot(inven_sourcream,i,select,string(inven[i]));
			} else if (name[i] == "stock") {
				drawInvenSlot(inven_stock,i,select,string(inven[i]));
			} else if (name[i] == "celery") {
				drawInvenSlot(inven_celery,i,select,string(inven[i]));
			} else if (name[i] == "hcream") {
				drawInvenSlot(inven_hcream,i,select,string(inven[i]));
			} else if (name[i] == "chicken") {
				drawInvenSlot(inven_chicken,i,select,string(inven[i]));
			} else if (name[i] == "milk") {
				drawInvenSlot(inven_milk,i,select,string(inven[i]));
			} else if (name[i] == "cheese") {
				drawInvenSlot(inven_cheese,i,select,string(inven[i]));
			} else if (name[i] == "ronion") {
				drawInvenSlot(inven_ronion,i,select,string(inven[i]));
			} else if (name[i] == "mayo") {
				drawInvenSlot(inven_mayo,i,select,string(inven[i]));
			} else if (name[i] == "yogurt") {
				drawInvenSlot(inven_yogurt,i,select,string(inven[i]));
			} else if (name[i] == "strawberry") {
				drawInvenSlot(inven_strawberry,i,select,string(inven[i]));
			} else if (name[i] == "blueberry") {
				drawInvenSlot(inven_blueberry,i,select,string(inven[i]));
			} else if (name[i] == "tomato") {
				drawInvenSlot(inven_tomato,i,select,string(inven[i]));
			} else if (name[i] == "bacon") {
				drawInvenSlot(inven_bacon,i,select,string(inven[i]));
			} else if (name[i] == "potato") {
				drawInvenSlot(inven_potato,i,select,string(inven[i]));
			} else if (name[i] == "pasta") {
				drawInvenSlot(inven_pasta,i,select,string(inven[i]));
			} else if (name[i] == "butter") {
				drawInvenSlot(inven_butter,i,select,string(inven[i]));
			} else if (name[i] == "juice") {
				drawInvenSlot(inven_juice,i,select,string(inven[i]));
			}
		}
	}
}