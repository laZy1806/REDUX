/// @function			scrRoomClamps()
/// @description		Returns an array of clamps to be used for oWorldCam based on room
/// @return				An array where [0] and [1] are x min and x max respectively, and [2] and [3] are y min and max respectively
function scrRoomClamps(){
	switch room {
		case oWorldParent:
			return [0, 200, 0, 200];
		break;
		case menuRoom:
			return [0, 1280, 0, 1000];
		break;
		case tempRoom:
			return [0, 1280, 0, 1000];
		break;
		default:
			return [0, 10000, 0, 10000];
		break;
	}
}