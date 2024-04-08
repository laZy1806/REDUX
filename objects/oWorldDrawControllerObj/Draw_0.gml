/// @description Insert description here
// You can write your code in this editor

show_debug_message(ds_grid_height(depthGrid))

if (ds_exists(depthGrid, ds_type_grid)) {
	
	ds_grid_sort(depthGrid, 1, true)
	for(var i = 0; i < ds_grid_height(depthGrid); i++) {
		
		var instID = depthGrid[# 0, 0];
		show_debug_message(is_real(instID))
		if (instance_exists(instID) && variable_instance_exists(instID, "drawEvent")) {
			
			with instID drawEvent() //every object that 
			
		}
		// takes after objectTemplate should have this.
		
	}
	if ds_exists(depthGrid, ds_type_grid) ds_grid_destroy(depthGrid)	//constantly deletes and gets re-added in objs
};
		//WIll USE LATER FOR INDIVIDUAL PLACING OBJECTS
//instance_find(playerObj, 0).drawEvent()		//frisk will always be on top of objects