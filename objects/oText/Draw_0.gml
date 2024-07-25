/// @description Draw

var _halfw = w * 0.5

// Draw the Box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x - _halfw - border, y - h - (border * 2), x + _halfw + border, y, 15,15, false);
draw_sprite(sMarker,0,x,y);
draw_set_alpha(1);

// Draw text
DrawSetText(c_white, fMenu, fa_center, fa_top);
draw_text(x,y - h - border,text_current);