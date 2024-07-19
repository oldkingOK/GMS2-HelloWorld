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
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);



// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);