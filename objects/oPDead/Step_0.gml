if (done == 0)
{
	vsp = vsp + grv

	// 水平碰撞 Horizontal Collision
	if (place_meeting(x + hsp, y, oWall))
	{
		while (!place_meeting(x + sign(hsp), y, oWall)) // sign 返回 +1 或 -1 或 0 取决于变量的符号
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	x = x + hsp;
	// 一些内置属性，比如 sprite_index

	// 垂直碰撞 Vertical Collision
	if (place_meeting(x, y + vsp, oWall)) 
	{
		if (vsp > 0) 
		{
			done = 1;
			image_index	= 1;
			// 撞地开始计时
			alarm[0] = 60;
		}
		while (!place_meeting(x, y + sign(vsp), oWall)) // sign 返回 +1 或 -1 或 0 取决于变量的符号
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	
	y = y + vsp;
}