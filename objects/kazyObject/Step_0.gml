/// @description Insert description here
// You can write your code in this editor
if SPDCALC <= 1 SPDCALC += SPEED
else SPDCALC -= 1
currentAnim()

BOX = instance_find(fightBoxObj, 0)


/* DEBUG SECTION
image_xscale += (keyboard_check(vk_right) - keyboard_check(vk_left)) *0.05
image_yscale += (keyboard_check(vk_up) - keyboard_check(vk_down)) * 0.05
