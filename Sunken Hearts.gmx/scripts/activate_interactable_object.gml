///activate_interactable_object(xdir, ydir)
var xdir = argument0;
var ydir = argument1;

//Is there an object?
var interactable = instance_place(x+xdir, y+ydir, o_interactable_parent);

//If we have input and there is an object
if (o_input.action && interactable != noone)
{
    with (interactable)
    {
        event_user(ACTIVATE);
        switch (o_orion.facing)
        {
            case RIGHT: facing = LEFT; break;
            case UPRIGHT: facing = DOWNLEFT; break;
            case UP: facing = DOWN; break;
            case UPLEFT: facing = DOWNRIGHT; break;
            case LEFT: facing = RIGHT; break;
            case DOWNLEFT: facing = UPRIGHT; break;
            case DOWN: facing = UP; break;
            case DOWNRIGHT: facing = UPLEFT; break;
            default: facing = DOWN;
        }
    }
}
