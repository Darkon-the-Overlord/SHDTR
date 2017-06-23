///item_option_use

if (instance_exists(parent))
{
    with (parent)
    {
        // Use the item
        use_item_index(index);
        
        // Destroy the menu
        if (instance_exists(o_menu_ui))
        {
            with (o_menu_ui) instance_destroy();
        }
    }
}
