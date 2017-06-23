///orion_talking_state
image_speed = 0;
sprite_index = idle[facing];

// Check for dialog
if (!instance_exists(o_dialog))
{
    state = orion_move_state;
}
