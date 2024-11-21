if (!variable_global_exists("initialized")) {
    unique = 0;
    inven[0] = 0;
    inven[1] = 0;
    inven[2] = 0;
    inven[3] = 0;
    inven[4] = 0;
	inven[5] = 0;

    name[0] = "";
    name[1] = "";
    name[2] = "";
    name[3] = "";
    name[4] = "";
	name[5] = "";

    select = 0;
    end_level = 0; // fridge
	
	// recipe needs
    need_pasta = 1;
	need_cheese = 1;
	need_broccoli = 1;
	need_milk = 1;
	need_butter = 1;
	need_bacon = 1;

    initialized = true;
}