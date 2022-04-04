/// @description Insert description here
// You can write your code in this editor
draw_self();

//if enemy hit draw white over sprite
if(flash>0)
{
	//flashes white for 3 frames
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}
