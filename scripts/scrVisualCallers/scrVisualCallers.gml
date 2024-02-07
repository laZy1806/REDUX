/// @func							shakeBloom(_shakeAmount, _shakeTime, _bloomIntensity, _bloomSpeed)
/// @desc							Both shakes and blooms the entire screen (Not the app surface)
/// @arg {int} _shakeAmount			The amount in pixels to shake the camera
/// @arg {int} _shakeTime			The amount of frames for how long to make the camera shake for.
/// @arg {int} _bloomIntensity		The amount in which how intense/meshed the bloom should be with original image.
/// @arg {int} _bloomSpeed			The amount of speed to be used in a lerp statement.
function shakeBloom(_shakeAmount, _shakeTime, _bloomIntensity, _bloomSpeed) {
	with (instance_find(camObj, 0)) shakeCamera(_shakeTime, _shakeAmount);
	with (instance_find(applicationShaderObject, 0)) {
		bloomAdjuster = _bloomIntensity;
		bloomSpeed = _bloomSpeed;
	}
}