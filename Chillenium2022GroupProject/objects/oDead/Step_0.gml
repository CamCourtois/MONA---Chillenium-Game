/// @description Insert description here
// You can write your code in this editor

//
if(done == 0){
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
		//show_debug_message("hitting side wall");
	}	
	x = x + hsp;

	// vert collide
	if (place_meeting(x,y+(vsp),oWall))
	{
		
		if(vsp > 0)
		{
			done = 1;
			image_index = 1;
			image_index = 2;
		}
		
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
			//show_debug_message("inside while loop");
		
		}
		//show_debug_message("lift from ground");
		vsp = 0;

	}
	y = y + vsp;
}
