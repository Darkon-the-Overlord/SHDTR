///heal_effect(args_list)
var args_list = argument0;
var amount = args_list[| 0];
restored = string(amount);

// Heal the player
if (instance_exists(o_player_stats))
{
    with (o_player_stats)
    {
        stats[? "health"] = min(stats[? "health"]+amount, stats[? "maxhealth"]);
        if (stats[? "health"] == stats[? "maxhealth"])
        {
            create_message_at_view_center("Orion's health is fully restored!");
        }
        else
        {
            create_message_at_view_center("Orion restored "+restored+" health!");
        }
    }
    
}
