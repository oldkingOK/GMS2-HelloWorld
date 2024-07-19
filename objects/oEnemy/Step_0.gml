/// @description 这里是描述
vsp = vsp + grv

// 水平碰撞 Horizontal Collision
if (place_meeting(x + hsp, y, oWall))
{
	while (!place_meeting(x + sign(hsp), y, oWall)) // sign 返回 +1 或 -1 或 0 取决于变量的符号
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}

x = x + hsp;
// 一些内置属性，比如 sprite_index

// 垂直碰撞 Vertical Collision
if (place_meeting(x, y + vsp, oWall))
{
	while (!place_meeting(x, y + sign(vsp), oWall)) // sign 返回 +1 或 -1 或 0 取决于变量的符号
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

// 动画处理
if (!place_meeting(x, y + 1, oWall))
{
	sprite_index = sEnemyA;
	image_speed = 0;
	
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);