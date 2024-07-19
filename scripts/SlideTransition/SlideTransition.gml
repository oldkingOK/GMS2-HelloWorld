// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
/// @function					SlideTransition(mode, target)
/// @desc						Transition between room etc.
/// @param {struct.TRANS_MODE}	mode    Mode sets transition mode between next, restart and goto
/// @param {Asset.GMRoom}		[target]  Target sets target room when using the goto mode.
function SlideTransition(_mode, _target)
{
	with (oTransition)
	{
		mode = _mode;
		if (argument_count > 1) target = _target;
	}
}

