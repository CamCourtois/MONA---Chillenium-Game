
//returns the instance id of the specific Enemy hit
with(other)
{
		hp--;
		flash = 3;
		//other.direction refers to the direction of bullet instance
		hitfrom = other.direction;
}

//destroys bullet, not enemy collided with
instance_destroy();
