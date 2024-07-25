/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,oDead))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(6, direction);
		vsp = lengthdir_y(6, direction) - 2; // 加一点垂直初始速度
		if (hsp != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	}
	instance_destroy();
}