/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Begin Step 在所有的 Step 之前执行

x = oPlayer.x;
y = oPlayer.y;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1)

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	recoil = 4;
	
	
	firingdelay = 5;
	with (instance_create_layer(x,y,"Bullet",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)

if (mouse_x != x) image_yscale = image_scale * sign(mouse_x - x)