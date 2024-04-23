/// @desc Function Description
/// @param {string} _doorName Name of the door in the list of instances in the next room
/// @param {room} _room the next room id
/// @returns {real} Description
function scrFindDoor(_doorID, _room){
	var roomData = room_get_info(_room);
	for(i = 0; i < array_length(roomData.instances); i++) {
		if((roomData.instances[i].id) == _doorID) {
			return roomData.instances[i];
		}
	}
}