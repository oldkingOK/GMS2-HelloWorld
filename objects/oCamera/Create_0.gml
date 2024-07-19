/// @description Set up a camera
// 你可以在此编辑器中写入代码 

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5; // 一半长度，便于计算中心
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
