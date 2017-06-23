///menu_option_items

if (ds_list_size(o_player_stats.items) > 0)
{
    child = instance_create(x+width+4, y, o_item_list_ui);
    child.parent = id;
    enabled = false;
}
else if (ds_list_size(o_player_stats.items) <= 0)
{
    var message = create_message(other.x+66, other.y, "You have no items!");
    child = message;
    child.parent = id;
    enabled = false;
}
