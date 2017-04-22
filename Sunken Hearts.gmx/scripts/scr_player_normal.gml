scr_get_input();

alarm[0] = 1;
//Debug: Change Orion State

if (space)
{
    if orionState = 0
    {
        orionState = 1;
    }

    else if orionState = 1
    {
        orionState = 0;
    }
}

//Check if Action key/button is pressed

if (action_key)
{
    scr_action();
}

// Get the axis

var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

//Get direction

var dir = point_direction(0, 0, xaxis, yaxis);

//Get the length

if (xaxis == 0 && yaxis == 0)
{
    len = 0;
}
else
{
    len = spd;
}



//Get the hspeed and vspeed

hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Movement

phy_position_x += hspd;
phy_position_y += vspd;

//Set the sprite

image_speed = 0.2;

if (len == 0)
{
    switch(facing)
    {   
        //If player is not moving, set the sprite accordingly
        case 2: sprite_index = orionIdleUp; break;
        case 0: sprite_index = orionIdleDown; break;
        case 1: sprite_index = orionIdleLeft; break;
        case 3: sprite_index = orionIdleRight; break;    
    }
}

if (vspd > 0)
{
    sprite_index = orionWalkDown;
    facing = 0;
}
else if (vspd < 0)
{
    sprite_index = orionWalkUp;
    facing = 2;
}
else if (hspd > 0)
{
    sprite_index = orionWalkRight; 
    facing = 3;
}
else if (hspd < 0)
{
    sprite_index = orionWalkLeft;
    facing = 1;
}
