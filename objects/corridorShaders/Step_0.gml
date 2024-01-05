/// @description Insert description here
// You can write your code in this editor
#region old code for preset vignette
//if instance_exists(obj_cutsceneCam) {
/*
	var tintRGBA = fx_get_parameters(grayTint)
	var VignetteParams = fx_get_parameters(Vignette)

	var _osc = abs(sin(current_time/1000))

	tintRGBA.g_Intensity = abs(_osc)

	tintRGBA.g_TintCol = color_to_array(c_black)

	if instance_exists(obj_cutsceneCam)  zoom = obj_cutsceneCam.zoom_multi

	Edge1 = lerp(Edge1, 0.3, 0.02)
	Edge2 = lerp(Edge2, 1.2, 0.02)
	VignetteParams.g_VignetteEdges = [Edge1, Edge2]	
	
	fx_set_parameters(grayTint, tintRGBA)
	fx_set_parameters(Vignette, VignetteParams)
	*/
	// 

//}
#endregion

if cutsceneShaderTrigger
vignetteAdd = lerp(vignetteAdd, 0.9, 0.01)

// change to positive 0.7 when not debuged
if global.beginFade < -0.7 {
	instance_find(playerObj, 0).Frozen = true
}
else {
	instance_find(playerObj, 0).Frozen = false
}


/*
if keyboard_check_pressed(ord("O")) temp1 += 0.05
if keyboard_check_pressed(ord("L")) temp1 -= 0.05

if keyboard_check_pressed(ord("I")) temp2 += 0.05
if keyboard_check_pressed(ord("K")) temp2 -= 0.05

show_debug_message(temp1)
show_debug_message(temp2)
*/
