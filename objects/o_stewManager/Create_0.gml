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
    end_level = 1;
	buffer = 5;
	
	// recipe needs
    need_stock = 1;
    need_chicken = 1;
    need_carrot = 1;
    need_celery = 1;
	need_potato = 1;
	need_ronion = 1;

    initialized = true;
}