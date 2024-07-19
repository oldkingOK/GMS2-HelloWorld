/// @description 这里是描述

key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space); // 只会检测“按下”的一瞬间


// 手柄支持
if (key_left or key_right or key_jump)
{
	controller = 0;		
}

if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2) // axis left horizontal
{
	// 这样的写法就不会对下面的代码造成很大的影响
	key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_right = max(gamepad_axis_value(0, gp_axislh), 0);
	controller = 1;
}

if (gamepad_button_check_pressed(0, gp_face1))
{
	key_jump = 1;
	controller = 1;
}


// 计算移动
var move = key_right - key_left; // 最优雅的判断移动的方式

hsp = move * walksp;

vsp = vsp + grv;

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

// 动画处理
if (!place_meeting(x, y + 1, oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);