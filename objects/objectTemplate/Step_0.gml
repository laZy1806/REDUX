var PLAYER = instance_find(playerObj, 0)
var collision = collision_rectangle(bbox_left - (2 * image_xscale), bbox_top - (2 * image_xscale), bbox_right + (2 * image_xscale), bbox_bottom + (2 * image_xscale), playerObj, false, true)
if (isInteractable) && typeof(interactableFunc) = "method"  
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))) && collision != noone {
		interactableFunc()
	}