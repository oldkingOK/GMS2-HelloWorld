/// @description 这里是描述

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space); // 只会检测“按下”的一瞬间

// 计算移动
var move = key_right - key_left; // 最优雅的判断移动的方式

hsp = move * walksp;

vsp = vsp + grv

if (place_meeting(x, y+1, oWall)) and (key_jump)
{
	vsp = -7;
}

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
	while (!place_meeting(x, y + sign(vsp), oWall)) // sign 返回 +1 或 -1 或 0 取决于变量的符号
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

