/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// 创建了 Draw，就不会使用默认的着色器

draw_self();

if (flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self(); // 再次绘制
	shader_reset();
}