/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

with (other)
{
	// 这里的 other 指的是碰撞到的 Enemy
	hp--;
	flash = 3;
	hitfrom = other.direction;
}

instance_destroy();