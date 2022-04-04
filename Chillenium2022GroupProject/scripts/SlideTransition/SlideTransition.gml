/// @desc SlideTransition(mode, targetroom)
/// @arg_Mode sets transition mode between, next, restartm and goto
/// @arg_Target sets target room when using the goto mode
function SlideTransition(arg1, arg2)
{
	oFade.mode = arg1;
	if (argument_count > 1) oFade.target = arg2;
}
