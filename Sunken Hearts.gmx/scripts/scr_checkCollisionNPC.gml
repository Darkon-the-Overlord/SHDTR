//This checks to see if Orion can move up, down, right, left without being blocked
//Checks for collision volumes

//right
if (place_meeting ( x + playerSpeed, y, obj_dialoguer))
{
    right = false;
}
else
{
    right = true;
}

//left
if (place_meeting ( x - playerSpeed, y, obj_dialoguer))
{
    left = false;
}
else
{
    left = true;
}

//up
if (place_meeting ( x, y - playerSpeed, obj_dialoguer))
{
    up = false;
}
else
{
    up = true;
}

//down
if (place_meeting ( x, y + playerSpeed, obj_dialoguer))
{
    down = false;
}
else
{
    down = true;
}
