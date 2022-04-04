x = owner.x - 24;
y = owner.y- 44;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(oPlayer))
{
	if(oPlayer.x< x){
		image_yscale = -image_yscale;
	}
	if (point_distance(oPlayer.x, oPlayer.y, x,y) < 600)
	{
		image_angle = point_direction(x,y, oPlayer.x, oPlayer.y);
		countdown--;
		if(countdown <= 0)
		{
			countdown = countdownrate;
			//bullet code
		
		}
	}
		
}

