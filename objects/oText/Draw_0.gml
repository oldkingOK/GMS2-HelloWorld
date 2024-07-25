/// @description Draw

var _halfw = w * 0.5

if (!finish_box)
{
	alpha = min(alpha + alpha_spd, ToAlpha);
	finish_box = (alpha == ToAlpha);
}
else if (start_destroy)
{
	alpha = max(alpha - alpha_spd, 0);
	finish_destroy = (alpha == 0);
}

// Draw the Box
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_roundrect_ext(x - _halfw - border, y - h - (border * 2), x + _halfw + border, y, 15,15, false);
draw_sprite(sMarker,0,x,y);
draw_set_alpha(1);

// Draw text
if (finish_box)
{
	var _font_alpha = (1 / ToAlpha) * alpha
	DrawSetText(c_white, fMenu, fa_center, fa_top, _font_alpha);
	draw_text(x,y - h - border,text_current);
	draw_set_alpha(1);
}