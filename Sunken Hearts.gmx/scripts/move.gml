///move(hspd, vspd, update_facing)

var hspd = argument0;
var vspd = argument1;
var update_facing = argument2;

//Horizonal Movement
if (!place_meeting(x+hspd, y, o_solid))
{
    x += hspd;
}

//Vertical Movement
if (!place_meeting(x, y+vspd, o_solid))
{
    y += vspd;
}

var dir = point_direction(0, 0, hspd, vspd);
var dis = point_distance(0, 0, hspd, vspd);
if (update_facing && dis > 0)
{
    facing = get_facing(dir); 
}
var moved = x != xprevious || y != yprevious;

//Update the sprite direction
if (!moved)
{
    sprite_index = idle[facing];
    image_speed = 0;
    image_index = 0;
}
else
{
    sprite_index = walk[facing];
    image_speed = .2;
    update_xy();
}

//If we are able to move, return as true
return moved;
