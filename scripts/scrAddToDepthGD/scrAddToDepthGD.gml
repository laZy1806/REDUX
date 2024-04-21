// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//ARGUMENT0 is a optional y offset you can add to objects
with instance_find(oWorldDrawControllerObj, 0) {
	if (!ds_exists(depthGrid, ds_type_grid)) {
		depthGrid = ds_grid_create(2, 1);
		depthGrid[# 0, 0] = other.id;
		if (argument0 == undefined) depthGrid[# 1, 0] = other.y;
		else if (argument0 != undefined) depthGrid[# 1, 0] = other.y + argument0;
	}
	else {
		var height = ds_grid_height(depthGrid);
		ds_grid_resize(depthGrid, 2, height + 1);
		depthGrid[# 0, height] = other.id;
		
		
		if (argument0 == undefined) depthGrid[# 1, height] = other.y;
		else if (argument0 != undefined) depthGrid[# 1, height] = other.y + argument0;
	}
}

