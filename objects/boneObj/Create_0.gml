/// @description setting damage and other variables
// You can write your code in this editor
curveList(5)

dmg = 1
hit_color = c_white
angledistance = abs(DesAngle - anglestart);
disX = DesX - startx
disY = DesY - starty
heightdiff = endheight - startheight
dir_topbone_theta =	(anglestart + 0)
dir_bottombone_theta = (anglestart + 180) 
movementCurve = function() { return 0 }
angleCurve = function() { return 0 }
heightCurve = function() { return 0 }
midBoneScale = startheight/2 
midSprite = noone

//defined when called through script
//relies on sprite origin point for changing rotational behavior
//could maybe cause issues
if (ROTATIONAL) midSprite = sp_bonemid
else midSprite = sp_bonemidLOW

topBoneData = {
	yLength : originY + lengthdir_y(startheight/2 + ((heightdiff/2) * 0), dir_topbone_theta),
	xLength : originX + lengthdir_x(startheight/2 + ((heightdiff/2) * 0), dir_topbone_theta),
	x : startx,
	y : starty,
	image_angle : anglestart + 90
}
bottomBoneData = {
	yLength : originY + lengthdir_y(startheight/2 + ((heightdiff/2) * 0), dir_bottombone_theta),
	xLength : originX + lengthdir_x(startheight/2 + ((heightdiff/2) * 0), dir_bottombone_theta),	
	x : startx,
	y : starty,
	image_angle : anglestart + 270
}
changeHeight = function(newheight = endheight, per = perHeight, heightCurve = heightMethod) {
	///@func changeHeight(newheight, 1/perchanger, curveType)
	perHeight = per
	startheight = endheight
	endheight = newheight	
	heightMethod = heightCurve
	evaluate[2] = 0
}
changeAngle = function(newAngle = anglestart, per = perAngle, angleCurve = angleMethod) {
	///@func changeAngle(newAngle, 1/per, curveType)
	anglestart = currentangle
	DesAngle = newAngle
	perAngle = per
	angleMethod = angleCurve
	evaluate[1] = 0
}
changeDestination = function(_x = originX, _y = originY, smoothMov = false, per = perMovement, movementCurve = movementMethod) {
	///@func changeDestination(x, y, smoothmov, 1/per, curveType)
	startx = originX
	starty = originY
	DesX = _x
	DesY = _y
	disX = _x - startx
	disY = _y - starty
	perMovement = per
	movementMethod = movementCurve
	evaluate[0] = 0
}		
methodController = function() {
	movementCurve = animcurve_get_channel(bonecurve, movementMethod)
	heightCurve = animcurve_get_channel(bonecurve, heightMethod)
	angleCurve = animcurve_get_channel(bonecurve, angleMethod)
}	
drawEvent = function(){
	draw_sprite_ext(midSprite, 0, originX, originY, 1, midBoneScale, image_angle, hit_color, image_alpha)
	draw_sprite_ext(sp_bonepart, 0, topBoneData.x, topBoneData.y, 1, 1, topBoneData.image_angle, hit_color, image_alpha)
	draw_sprite_ext(sp_bonepart, 0, bottomBoneData.x, bottomBoneData.y, 1, 1, bottomBoneData.image_angle, hit_color, image_alpha)
	draw_sprite_ext(sprite_index, image_index, bottomBoneData.x, bottomBoneData.y, 2, midBoneScale * 2, image_angle, c_white, 0)
}	
stepFunction = function() {
	return 0	
}