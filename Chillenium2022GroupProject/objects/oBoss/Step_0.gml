/// @description Core Player logic
vsp = vsp + grv;



// hort collide

if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		//show_debug_message("inside while loop");
		x = x + sign(hsp)
	}
	hsp = 0;
	//flips direction of enemy
	//hsp = -hsp;
	//show_debug_message("hitting side wall");
}	

//dont walk off edges
//show_debug_message("pm: " + string(place_meeting(x+hsp, y+1, oWall)) + " | hsp: " + string(hsp) + " | sprite_index: " + string(sprite_index));
if(grounded)&&(afraidofheights)&&(!place_meeting(x+hsp,y+1,oWall))
{
	hsp = -hsp;
	//show_debug_message("change directions");
}	

show_debug_message("hsp: " + string(hsp));
x = x + hsp;


// vert collide
if (place_meeting(x,y+(vsp),oWall))
{
	
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
		//show_debug_message("inside while loop");
		
	}
	//show_debug_message("lift from ground");
	vsp = 0;

}
y = y + vsp;

// animation
if (!place_meeting(x,y+1,oWall))
{
	grounded = false;
	sprite_index = sBoss;
	image_speed = 0;
	if(vsp > 0) image_index = 1; else image_index = 0;
	//show_debug_message("player is not on ground");
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sBoss;
		//show_debug_message("player is idle");
	}
	else
	{
		sprite_index = sBossR;
		//show_debug_message("player is moving");
	}
}

// Turns sprite left and right depending on direction
if (hsp != 0) image_xscale = sign(hsp);



