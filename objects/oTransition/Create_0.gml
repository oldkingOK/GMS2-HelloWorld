/// @description Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;

// 枚举：用英文代表数字，增加可读性
enum TRANS_MODE
{
	OFF,
	NEXT,// 下一个 room
	GOTO, // 指定 room
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO
percent = 1; // 黑条的进度
target = room; // 目标 room