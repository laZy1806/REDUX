/// @description Insert description here
// You can write your code in this editor
global.frisk = instance_create_depth(240, 450, -2, playerObj)
global.frisk.image_xscale = 2
global.frisk.image_yscale = 2
application_surface_draw_enable(true)
global.camCenterX = 320
global.camCenterY = 240

bedData = {
	image_xscale : 2,	
	image_yscale : 2,	
	sprite_index : Bed,
	stepFunction : function(){
		if keyboard_check_pressed(ord("Z")) and !instance_exists(obj_OverworldDialogue) and collision_rectangle(bbox_left - 5, bbox_top, bbox_right, bbox_bottom, global.frisk, false, true) {
			bedDialogue = instance_create_depth(0, 0, 0, obj_text)	
			box = instance_create_depth(0, 0, 0, obj_OverworldDialogue)	
			global.frisk.Frozen = true
			with bedDialogue {
				isHead = false
				DefaultFont = menuFont
				DefaultSpacing = 14
				DefaultLineSpacing = 26
				TextToDraw = "* (the bed looks, decently comfy.)"; //0
			}
		}
	}
}
brownDresserData = {
	image_xscale : 2,	
	image_yscale : 2,	
	sprite_index : Bed	
}
grayDresserData = {
	image_xscale : 2,	
	image_yscale : 2,	
	sprite_index : greyDresser	
}
brownDresserData = {
	image_xscale : 2,	
	image_yscale : 2,	
	sprite_index : brownDresser	
}
nightStandData = {
	image_xscale : 2,	
	image_yscale : 2,	
	sprite_index : nightStand	
}
deskData = {
	image_xscale : 2,	
	image_yscale : 2,	
	sprite_index : Desk	
}
monitorFrontData = {
	image_xscale : 2,	
	image_yscale : 2,	
	sprite_index : MonitorFront,
	stepFunction : function(){
		if keyboard_check_pressed(ord("Z")) and !instance_exists(obj_OverworldDialogue) and collision_rectangle(bbox_left, bbox_top + 50, bbox_right, bbox_bottom + 50, global.frisk, false, true) {
			monitorDialogue = instance_create_depth(0, 0, 0, obj_text)	
			box = instance_create_depth(0, 0, 0, obj_OverworldDialogue)	
			global.frisk.Frozen = true
			with monitorDialogue {
				isHead = false
				DefaultFont = menuFont
				DefaultSpacing = 14
				DefaultLineSpacing = 26
				TextToDraw = "* (the monitor looks like its still&on.)"; //0
				TextQueue[0] = "* (it shows some kind of bomb with&the name...)"; //0
				TextQueue[1] = "* (whitmore?)"; //0
			}
		}
	}
}
monitorSideData = {
	image_xscale : 2,	
	image_yscale : 2,	
	sprite_index : MonitorSide
}
noteObject = {
	sprite: Note,
	x : 442,
	y : 340,
	stepEV : function() {
		if keyboard_check_pressed(ord("Z")) and !instance_exists(obj_OverworldDialogue) and collision_rectangle(x - 40, y - 10, x, y + 10, global.frisk, false, true) {
			drog = instance_create_depth(0, 0, 0, obj_text)	
			box = instance_create_depth(0, 0, 0, obj_OverworldDialogue)	
			global.frisk.Frozen = true
			with drog {
				isHead = false
				DefaultFont = menuFont
				DefaultSpacing = 14
				DefaultLineSpacing = 26
				TextToDraw = "* (you find a note)"; 
				TextQueue[0] = "* (it reads...)"; 
				TextQueue[1] = "* \"code fileChecker tomorrow to&prevent crash.\""; 
				TextQueue[2] = "* \"if file is deleted, send player&to MISTAKE.\""; 
				TextQueue[3] = "* (mistake?)"; 
				TextQueue[4] = "* (oh@4,@1 there is a purple star under&the paper.)"; 
			}
			global.noteCollected = true
			saveObj.save()
		}	
	},
	drawEV : function() {
		draw_sprite_ext(sprite, 0, x, y, 2, 2, 90, c_white, 1)
	}
}

bedObject = instance_create_depth(425, 128, -1, furnitureObj, bedData)
gDresserObj = instance_create_depth(173, 293, -1, furnitureObj, grayDresserData)
bDresserObj = instance_create_depth(173, 203, -1, furnitureObj, brownDresserData)
nStandObj = instance_create_depth(347, 160, -1, furnitureObj, nightStandData)
deskObj = instance_create_depth(389, 330 - 58, -1, furnitureObj, deskData)
monitorFrontObj = instance_create_depth(354, 273, -1, furnitureObj, monitorFrontData)
monitorSideObj = instance_create_depth(445, 275, -1, furnitureObj, monitorSideData)

instance_create_depth(0, 0, 0, pauseObj)
if layer_sequence_exists(global.transLayer, global.currentTransSequence) {
	//layer_sequence_x(global.currentTransSequence, cam.x + 320)	
	//layer_sequence_y(global.currentTransSequence, cam.y + 240)	
}
//place these dialogues within respect items to interact with
draw_list = ds_list_create()
draw_queue = ds_priority_create()