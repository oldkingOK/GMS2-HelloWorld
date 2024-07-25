/// @description Progress text

if (finish_box)
{
	letters += spd;
	text_current = string_copy(text, 1, floor(letters));
}

draw_set_font(fMenu);
if (h == 0)	h = string_height(text);
w = string_width(text);

// Destroy when done
if (letters >= length) and (keyboard_check(vk_anykey))
{
	start_destroy = true;
	with (oCamera) follow = oPlayer;
}

if (finish_destroy) instance_destroy();