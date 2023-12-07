// Auto-generated stubs for each available event.

// *IMPORTANT* must create sequence idle in obj_kazy

function kazyAnimationCreate()
{
	change_alpha = false	
	limit = 0
	frameCounter = 0
	displacementCounter = 0
	currentFrame = 0;
	currentHeadFrame = 0;
	animTimer = 0;
	headDisplacementY = 0;
	headDisplacementX = 0;
	displacementArray[0][0] = 0;
	displacementSelector = 0;
	spriteAlpha = 0
	spriteAlphaSpeed = 0
	isStaticFrame = function() {
		return currentFrame = 0 or currentFrame = 1 or currentFrame = 18 or currentFrame = 19	
	}
	// make an array that contains data for where to move head, right or left, up or down
	// first half are X coordinates, second half are y coordinates
	#region head displacement coordinates; matches values of body indexs
		displacementArray[2] = [
			0,
			0,
			0,
			-2, 
			-1,
			0
		]
		displacementArray[5] = [
			0,
			0,
			0,
			2, 
			1,
			0
		]
		displacementArray[8] = [
			-2,
			0.5,
			1,
			1, 
			1,
			0,
			0,
			0,
			0,
			0	
		]
		displacementArray[13] = [
			2,
			0.5,
			0,
			-2, 
			0,
			0,
			0,
			0,
			0,
			0	
		]
	#endregion
	// must be created in create event and used in other events because of scope of variables.
	// 0 is normal, 1 is palm, 2 is up strike, 5 is down strike, 8 is left strike, 13 is right strike 
	bodyChange = function change_body_sprite(body_index) {
	///@func bodyChange(0 is normal, 1 is palm, 2 is up strike, 5 is down strike, 8 is left strike, 13 is right strike)	
		currentFrame = body_index;
		displacementSelector = body_index;
		displacementCounter = 0;
		switch body_index
		{
			case 0:
				//global.kazy_inst.activeTracks[3].imageindex = body_index
				limit = 0;
			break;
			case 1:
				//global.kazy_inst.activeTracks[3].imageindex = body_index
				limit = 1
			break;
			case 2:
				//global.kazy_inst.activeTracks[3].imageindex = body_index
				limit = 4;
			break;
			case 5:
				//global.kazy_inst.activeTracks[3].imageindex = body_index
				limit = 7;
			break;
			case 8:
				//global.kazy_inst.activeTracks[3].imageindex = body_index
				limit = 12;
			break;
			case 13:
				//global.kazy_inst.activeTracks[3].imageindex = body_index
				limit = 17;
			break;
			case 18:
				//global.kazy_inst.activeTracks[3].imageindex = body_index
				limit = 18;
			break;
			case 19:
				//global.kazy_inst.activeTracks[3].imageindex = body_index
				limit = 19;
			break;

		}
	}
	/*0 is normal, 1 is smile, 2 is dissapoint, 3 is disapoint smile, 
	4 is surprised, 5 is sweat 1, 6 is sweat 2, 7 is closed eyes, 8 is opened tired,
	9 is purple eye
	*/
	headChange = function change_head_sprite(head_index)
	///@func headChange()
	{
		currentHeadFrame = head_index
		//global.kazy_inst.activeTracks[4].imageindex = head_index
	}	
}
function kazyAnimationStep()
{
	// sets speed of animation depending on how many frames are in animation, smaller anims are slower, bigger ones are faster
	if array_length(global.kazy_inst.activeTracks) > 0 {
		spriteAlpha = lerp(spriteAlpha, global.spriteBlacktoWhite, spriteAlphaSpeed)
		global.kazy_inst.activeTracks[3].imageindex = currentFrame
		global.kazy_inst.activeTracks[4].imageindex = currentHeadFrame
		if !isStaticFrame() {
			if array_length(displacementArray[displacementSelector]) > 6 {
				frameCounter = 2	
				//frameCounter = 50	
			}
			else {
				frameCounter = 2	
				//frameCounter = 50
			}
			//headDisplacementX = displacementArray[displacementSelector][displacementCounter]
			//headDisplacementY = displacementArray[displacementSelector][displacementCounter + ((array_length(displacementArray[displacementSelector]))/2)]
			global.kazy_inst.activeTracks[4].xorigin += displacementArray[displacementSelector][displacementCounter]
			global.kazy_inst.activeTracks[4].yorigin += displacementArray[displacementSelector][displacementCounter + ((array_length(displacementArray[displacementSelector]))/2)]
		}
		if currentFrame < limit {
			if animTimer < frameCounter {
				animTimer++	
			}
			else {
				animTimer = 0;
				currentFrame++;
				displacementCounter++;
			}
		}
		// keeps static frames like palm from shifting back
		else if !isStaticFrame(){
			if animTimer < 20 {
				animTimer++	
			}
			else {
				obj_kazy.bodyChange(0)
			}	
		}
		// controls if sprite is fully black or visible
		for(var i = 1; i <= 4; i++) {
			global.kazy_inst.activeTracks[i].colormultiply = [1, spriteAlpha, spriteAlpha, spriteAlpha] 
		}	
	}
}
