/// @description Update camera
// 你可以在此编辑器中写入代码 

// 更新目标 Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo	= follow.y;
}

// Update object position
// 最简单的平滑算法
x += (xTo - x) / 25;
y += (yTo - y) / 25;


// 防止超出边界
x = clamp(x, view_w_half+buff, room_width - view_w_half-buff);
y = clamp(y, view_h_half+buff, room_height - view_h_half-buff);

// 屏幕摇晃 screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain -((1/shake_length)*shake_magnitude));


// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);


if (layer_exists("Mountains"))
{
	layer_x("Mountains", x / 2);
}

if (layer_exists("Trees"))
{
	layer_x("Trees", x / 4);
}