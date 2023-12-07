/// @description drawing the health bar 
// You can write your code in this editor`
if (MyCurrentHP > MyHPToBe) {
	MyCurrentHP -= ((MyHP - MyHPToBe) / 20);
	if (MyCurrentHP < MyHPToBe)
		MyCurrentHP = MyHPToBe;
}
if ShowBar {
	draw_set_color(c_dkgrey);
	draw_rectangle(x - (BarWidth / 2), y - 10, x + (BarWidth / 2), y + 4, false);
	if (MyCurrentHP > 0) {
		draw_set_color(c_lime);
		draw_rectangle(x - (BarWidth / 2), y - 10, x - (BarWidth / 2) + ((MyCurrentHP / MyMaxHP) * BarWidth), y + 4, false);
	}
}
if (Damage != 0 && Damage != "MISS")
	draw_set_color(c_red);
else
	draw_set_color(c_grey);
// aligns text horizontally in the center and by offset made	
draw_set_font(font_battle_dialogue);
ha = draw_get_halign();
draw_set_halign(fa_center);
draw_text(x, y - (40 + DamageOffsetY), string(Damage));
DamageOffsetY *= 0.9;
draw_set_halign(ha);


