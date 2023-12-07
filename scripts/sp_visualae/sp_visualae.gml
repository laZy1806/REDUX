// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sp_visualae(shake, shakeamount, afterimage){

obj_kazy.afterimage = afterimage

if afterimage {
	obj_kazy.ae_imagealpha = 1	
	obj_kazy.percent = 0	
}
		
obj_kazy.shake = shake

obj_kazy.shakeamount = shakeamount

obj_kazy.stepshake = shakeamount

}