/// @description case for each random
// You can write your code in this editor
runEvent = true
switch ranEventNum {
	case 40:
		corridorX = 640 - 640
		corridorY = 260 + 240 * 0.035/2 
		ranFinish = irandom_range(-900, -1200)
		corAlp[1] = 0.2
	break;
	case 50:
		if video_get_status() != video_status_playing video_open("videos/firstClip.mp4")
		video_resume()
		if beginVideo videoAlpha[1] = 0.8
		if !beginVideo videoAlpha[1] = 0
		beginVideo *= -1
		alarm[0] = 340
	break;
	case 45:
		if video_get_status() != video_status_playing video_open("videos/secondClip.mp4")
		video_resume()
		if beginVideo videoAlpha[1] = 0.8
		if !beginVideo videoAlpha[1] = 0
		beginVideo *= -1
		alarm[0] = 300
	break;
}