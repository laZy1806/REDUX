/// @description drawing flee box
// You can write your code in this editor
draw_set_color(c_black);
draw_set_alpha(BlackTransparency);
draw_rectangle(0 ,0 , room_width, room_width, false);
draw_set_alpha(1);
BlackTransparency += 0.02;
if (BlackTransparency >= 1) {
	//ep 7 overworld
}
draw_self();




