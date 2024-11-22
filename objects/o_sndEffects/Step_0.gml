cooldown--;

if (!on) {
	variable_global_set("effects", 0);
} else {
	variable_global_set("effects", 1);
}

if (cooldown == 0) {
	cooldown = 30;
}