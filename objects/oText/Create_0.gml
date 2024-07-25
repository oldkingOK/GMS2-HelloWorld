/// @description 定义变量

spd = 0.25; // 文本绘制速度（每帧多少个字）
letters = 0;
text = "This is a test string\nSecond line here!";
length = string_length(text);
text_current = "";
alpha = 0;
ToAlpha = 0.5;
alpha_spd = 0.02;
finish_box = false;
start_destroy = false;
finish_destroy = false;

w = 0;
h = 0;
border = 10;