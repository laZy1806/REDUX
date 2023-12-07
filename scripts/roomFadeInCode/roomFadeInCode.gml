// Auto-generated stubs for each available event.

function roomFadeIn_event_create()
{
	
}
function roomFadeIn_event_step()
{
	seqPausing()
	if instance_exists(obj_cam) {
		layer_sequence_x(self.elementID, obj_cam.x + room_width/2)	
		layer_sequence_y(self.elementID, obj_cam.y + room_height/2)	
		layer_sequence_speedscale(self.elementID, 1)	
	}
	else {
		layer_sequence_speedscale(self.elementID, 0)	
	}
}