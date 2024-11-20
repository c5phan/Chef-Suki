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
    end_level = 0;
	
	// recipe needs
    need_egg = 1;
    need_hcream = 1;
    need_bpepper = 1;
    need_cheese = 1;
	need_pastry = 1;
	need_bacon = 1;

    initialized = true;
}