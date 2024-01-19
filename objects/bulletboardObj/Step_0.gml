for(var i = 0; i < array_length(buttonList); i++) {
	if buttonList[i] != noone buttonList[i].STEP()
}
state = clamp(state, -1, 2)
selector = clamp(selector, -1, 2)

//TEST = (current_time < 10000 && current_time % 5 = 0) ? TEST + 1 : TEST