/// @description variables for oENEMY


vsp = 3;
grv = 0.3;
walksp = 4;
hsp = walksp;
afraidofheights = true;
grounded = false;
hasWeapon = true;

hp = 50;
flash = 0;
hitfrom = 0;

if(hasWeapon)
{
	mygun = instance_create_layer(x,y, "Gun", oEgun)
	with(mygun)
	{
		owner = other.id
	}
}
else mygun = noone;
