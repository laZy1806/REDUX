/// @description Insert description here
// You can write your code in this editor
/*
if !instance_exists(saveObj) instance_create_depth(0, 0, 0, saveObj)
saveObj.load()

global.fileChecker = function() {
	if !directory_exists("kai/") return false
	else {
		if !file_exists("kai/IMG_2678.jpg") return false
		if !file_exists("kai/IMG_2693.jpg")  return false
		if !file_exists("kai/IMG_2711.jpg")  return false
		if !file_exists("kai/inGameImage.png")  return false
	}
	if !directory_exists("kazySprites/") return false
	else {
		if !file_exists("kazySprites/bad.png") return false
		if !file_exists("kazySprites/full body.png")  return false
		if !file_exists("kazySprites/newfullbody.png")  return false
	}	
	if !directory_exists("misc/") return false
	else {
		if !file_exists("misc/narwhal.png") return false
	}	
	if !directory_exists("videos/") return false
	else {
		if !file_exists("videos/firstClip.mp4") return false
		if !file_exists("videos/secondClip.mp4") return false
	}	
	if !file_exists("readme.txt") return false
	//if !file_exists("test.deleteafter") return false
	return true
}
show_debug_message(global.name)
// Create Event