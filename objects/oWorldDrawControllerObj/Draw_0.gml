/// @description Insert description here
// You can write your code in this editor
if(ds_exists(depthGrid, ds_type_grid)) {
	ds_grid_sort(depthGrid, 1, true)
	
	for(var i = 0; i < ds_grid_height(depthGrid); i++) {
		
		var instID = depthGrid[# 0, i]
		if variable_instance_exists(instID, "drawEvent") instID.drawEvent()
		
	}
	if ds_exists(depthGrid, ds_type_grid) ds_grid_destroy(depthGrid)
}
instance_find(playerObj, 0).drawEvent()		//frisk will always be on top of objects
























