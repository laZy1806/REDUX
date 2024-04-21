if (instance_exists(OverworldStateObj)) {
	if (instance_find(OverworldStateObj, 0).isMenu == false) {
		instance_destroy(id)
	}
}