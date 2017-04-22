//This checks to see if Orion can move up, down, right, left without being blocked
//Checks for collision volumes

//right
if (place_meeting( x + playerSpeed, y, obj_genCollision))
{
    right = false;
}
else
{
    right = true;
}

//left
if (place_meeting ( x - playerSpeed, y, obj_genCollision))
{
    left = false;
}
else
{
    left = true;
}

//up
if (place_meeting ( x, y - playerSpeed, obj_genCollision))
{
    up = false;
}
else
{
    up = true;
}

//down
if (place_meeting ( x, y + playerSpeed, obj_genCollision))
{
    down = false;
}
else
{
    down = true;
}
