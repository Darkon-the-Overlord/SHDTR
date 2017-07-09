///orion_move_state()
//Movement
var hspd = (o_input.right - o_input.left)*spd;
var vspd = (o_input.down - o_input.up)*spd;

//Run movement script
if (!move(hspd, vspd, true))
{
    move_intended_direction(hspd, vspd, 8);
}

// Check for menu
if (o_input.start)
{
    if (!instance_exists(o_menu_ui))
    {
        instance_create(16, 16, o_menu_ui);
        exit;
    }
}

// Get the direction we are facing
var xdir = lengthdir_x(8, facing*45);
var ydir = lengthdir_y(8, facing*45);

// Check if run button is held
/*if (o_input.back_held)
{
    state = orion_charge_state;
}*/

// Check for the interactable object
activate_interactable_object(xdir, ydir);
