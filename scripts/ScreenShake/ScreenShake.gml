/// @func						ScreenShake(magnitude,frames)
/// @desc						Shake the screen
/// @arg	{real}	magnitude	Magnitude sets the strength of the shake (radius in pixels)
/// @arg	{real}	frames		Frames sets the length of the shake in frams (60 = 1 second at 60 fps)

function ScreenShake(_magnitude, _frames){
	with (oCamera)
	{
		if (_magnitude > shake_remain) // 覆盖式设计，只有晃得更厉害才会覆盖
		{
			shake_magnitude = _magnitude;
			shake_remain = _magnitude;
			shake_length = _frames;
		}
	}
}