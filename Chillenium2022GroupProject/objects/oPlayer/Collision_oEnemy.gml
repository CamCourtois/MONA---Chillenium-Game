/// @description Insert description here
// You can write your code in this editor

//deletes gun when player dies
//with(oGun) instance_destroy();

new_direction = point_direction(other.x, other.y, x,y);
//hsp = lengthdir_x(6, direction);
//vsp = lengthdir_y(4, direction)-2;
//if (sign(hsp) != 0) image_xscale = sign(hsp);


x += lengthdir_x(500, new_direction);
room_restart();

