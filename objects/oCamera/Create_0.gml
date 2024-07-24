/// @description Set up a camera
// 你可以在此编辑器中写入代码 

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5; // 一半长度，便于计算中心
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;


shake_length = 0; // 摇晃时间 = 秒数 * 帧数（60）
shake_magnitude = 0; // 摇晃幅度
shake_remain = 0; // 还剩多少需要摇晃
buff = 64; // 相机的缓冲区，防止相机在摇晃的时候照到地图外面