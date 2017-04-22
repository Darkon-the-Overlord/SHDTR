scr_get_input();

switch(facing)
{   
    //If player is not moving, set the sprite accordingly
    case 2: sprite_index = orionIdleUp; break;
    case 0: sprite_index = orionIdleDown; break;
    case 1: sprite_index = orionIdleLeft; break;
    case 3: sprite_index = orionIdleRight; break;    
}
