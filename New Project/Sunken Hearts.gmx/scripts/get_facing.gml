///get_facing(direction)
var dir = argument0;

var facing = round(dir/45);
if (facing == 8) facing = RIGHT;
return facing;
