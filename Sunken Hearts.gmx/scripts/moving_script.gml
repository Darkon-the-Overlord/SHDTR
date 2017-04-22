//Moving up
if (up_key && !down_key && !left_key && !right_key)
{
    phy_position_y -= spd;
    sprite_index = orionWalkUp;
    facing = 2;
}

//Moving up left
else if (up_key && !down_key && left_key && !right_key)
{
    phy_position_y -= spd;
    phy_position_x -= spd;
    sprite_index = orionWalkUp;
    facing = 2;
}

//Moving up right
else if (up_key && !down_key && !left_key && right_key)
{
    phy_position_y -= spd;
    phy_position_x += spd;
    sprite_index = orionWalkUp;
    facing = 2;
}

//Moving down
else if (!up_key && down_key && !left_key && !right_key)
{
    phy_position_y += spd;
    sprite_index = orionWalkDown;
    facing = 0;
}

//Moving down left
else if (!up_key && down_key && left_key && !right_key)
{
    phy_position_y += spd;
    phy_position_x -= spd;
    sprite_index = orionWalkDown;
    facing = 0;
}

//Moving down right
else if (!up_key && down_key && !left_key && right_key)
{
    phy_position_y += spd;
    phy_position_x += spd;
    sprite_index = orionWalkDown;
    facing = 0;
}

//Moving left
else if (!up_key && !down_key && left_key && !right_key)
{
    phy_position_x -= spd;
    sprite_index = orionWalkLeft;
    facing = 1;
}

//Moving right
else if (!up_key && !down_key && !left_key && right_key)
{
    phy_position_x += spd;
    sprite_index = orionWalkRight;
    facing = 3;
}

//Conflicting directions

else if (up_key && down_key && !left_key && !right_key)
{
    if facing = 0
    {
        sprite_index = orionIdleDown
    }
    else if facing = 2
    {
        sprite_index = orionIdleUp
    }   
}

else if (!up_key && !down_key && left_key && right_key)
{
    if facing = 1
    {
        sprite_index = orionIdleLeft
    }
    else if facing = 3
    {
        sprite_index = orionIdleRight
    }   
}

//Not Moving
else
{
    if facing = 0
    {
        sprite_index = orionIdleDown;
    }
    
        if facing = 1
    {
        sprite_index = orionIdleLeft;
    }
    
        if facing = 2
    {
        sprite_index = orionIdleUp;
    }
    
        if facing = 3
    {
        sprite_index = orionIdleRight;
    }
}
