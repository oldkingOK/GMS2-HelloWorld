/// @func								DrawSetText(color, font, halign, valign)
/// @desc								每次绘制文本的时候都要设置，所以写成了脚本，一行解决四行
/// @arg		{Constant.Color}		color	颜色
/// @arg		{Asset.GMFont}			font	字体
/// @arg		{Constant.HAlign}		halign	水平对齐方式，比如 fa_right
/// @arg		{Constant.VAlign}		valign	垂直对齐方式，比如 fa_bottom
function DrawSetText(_color, _font, _halign, _valign){
	draw_set_color(_color);
	draw_set_font(_font);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}