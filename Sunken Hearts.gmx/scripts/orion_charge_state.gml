var hspd = o_input.right - o_input.left;
var vspd = o_input.down - o_input.up;

var direct = point_direction(0, 0, hspd, vspd);
var faced = get_facing(direct); 
sprite_index = idle[faced];

if (hspd = 0 && vspd = 0)
{
    sprite_index = idle[faced];
}

if (!o_input.back_held)
{
    state = orion_move_state;
}
