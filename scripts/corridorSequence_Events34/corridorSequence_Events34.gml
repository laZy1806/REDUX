// Auto-generated stubs for each available event.

function killDialogue()
{
	with instance_find(obj_text, 0) {
		instance_destroy(self)	
		
	}
	
}
function camChange()
{
		with cutsceneCamera {
			event_perform(ev_alarm, 0)
			changeNum++;
		}
}
function fadeChange()
{

}
function corridorSequence_event_create()
{
	changeNum = 0;
	cutsceneCamera = instance_create_depth(0, 0, 0, obj_cutsceneCam)
	//corridorDrawObj.cutsceneShaderTrigger = true
}

function corridorSequence_event_destroy()
{

}

function corridorSequence_event_clean_up()
{

}

function corridorSequence_event_step()
{
	seqPausing()
}

function corridorSequence_event_step_begin()
{

}

function corridorSequence_event_step_end()
{

}

function corridorSequence_event_async_system()
{

}