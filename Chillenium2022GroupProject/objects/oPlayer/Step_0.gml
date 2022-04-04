/// @description Core Player logic

//player inputs
if (hascontrol)
{
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

// movement calculations

var _move = key_right - key_left;

hsp = _move * walksp;	

	
vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -jumpsp;
}


// hort collide

if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	///	show_debug_message("inside while loop");
		x = x + sign(hsp)
	}
	hsp = 0;
	//show_debug_message("hitting side wall");
}	
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
	sprite_index = sPlayerA;
	image_speed = 0;
	if(vsp > 0) image_index = 1; else image_index = 0;
	//show_debug_message("player is not on ground");
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
		//show_debug_message("player is idle");
	}
	else
	{
		sprite_index = sPlayerR;
		//show_debug_message("player is moving");
	}
}

// Turns sprite left and right depending on direction
if (hsp != 0) image_xscale = sign(hsp);

if(bbox_top > room_height)
{
	room_restart();
}


