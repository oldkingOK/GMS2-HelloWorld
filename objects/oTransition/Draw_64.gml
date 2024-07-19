/// @description Draw black bars
// 你可以在此编辑器中写入代码 

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h_half, false);
	draw_rectangle(0,h,w,h-(percent*h_half), false);
}