// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
with oWorldDrawControllerObj {
	if (!ds_exists(depthGrid, ds_type_grid)) {
		depthGrid = ds_grid_create(2, 1);
		depthGrid[# 0, 0] = other;
		depthGrid[# 1, 0] = other.y;
	}
	else {
		var height = ds_grid_height(depthGrid);
		ds_grid_resize(depthGrid, 2, height + 1);
		depthGrid[# 0, height] = other.id;
		depthGrid[# 1, height] = other.y;
	}
}