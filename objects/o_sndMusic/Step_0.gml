cooldown--;

if (!on) {
	variable_global_set("music", 0);
} else {
	variable_global_set("music", 1);
}

if (cooldown == 0) {
	cooldown = 30;
}
