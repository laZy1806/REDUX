global.gasterList = ds_list_create()
//make sure timer is larger than speed to avoid gaster triggering while moving.
function Gaster(_x, _startx, _y, _starty, _spd, _timer, _angle, _anglestart, _xscale = 2, _yscale = 2, _endtime = 30){
	var blaster = instance_create_depth(x,y, -10000, gasterObj, {
		startx : _startx,
		starty : _starty,
		xTo : _x,
		yTo : _y,
		spd : _spd,
		angleStart : _anglestart,
		desAngle : _angle,
		yTo : _y,
		Timer : _timer,
		endTime : _endtime,
		image_xscale : _xscale,
		image_yscale : _yscale
	});
	ds_list_add(global.gasterList, blaster)
} 