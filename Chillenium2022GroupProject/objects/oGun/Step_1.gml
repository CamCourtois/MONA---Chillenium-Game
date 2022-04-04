/// @description Insert description here
// You can write your code in this editor

if (instance_exists(oPlayer))
{
	if (oPlayer.sprite_index == sPlayerR)
	{
		x = oPlayer.x+2;
		y = oPlayer.y- 3;
	}
	else if (oPlayer.sprite_index == sPlayerA)
	{
		// for the jumping up animation offset
		if (oPlayer.image_index == 0)
		{
			x = oPlayer.x+2;
			y = oPlayer.y - 3;
		}
		
		// else they are falling offset
		else if(oPlayer.image_index == 1)
		{
			x = oPlayer.x;
			y = oPlayer.y;
		}
			
	}
	else
	{
		x = oPlayer.x+2;
		y = oPlayer.y-3;
	}
}


image_angle = point_direction(x,y,mouse_x, mouse_y);

firingdelay = firingdelay-1;

//returns the biggest value of given recoil range, ensures recoil doesn't go below zero
recoil = max(0,recoil-1);

if(mouse_check_button(mb_left)) && (firingdelay < 0)
{
	
	recoil = 4;
	firingdelay = 5;
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		//constant pixel speed of bullet
		speed = 25;
		//other. refers to property of gun (original object)
		// makes bullet shoot the direction of gun
		//random range offsets direction of bullets randomly
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

//returns the number of pixels to return to a x distance from position
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

//adjusts orientation of gun based on if left facing
if(image_angle > 90) && (image_angle < 270)
{
	//flips gun upside down
	image_yscale = -1;
}
else
{
	//set gun orientation back to right if facing right
	image_yscale =1;
}

if (instance_exists(oPlayer))
{
	if (oPlayer.hsp != 0) image_xscale = sign(oPlayer.hsp);
}
