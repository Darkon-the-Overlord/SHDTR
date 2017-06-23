///menu_option_load()
if (load_game("save.dat"))
{
    create_message_at_view_center("You have returned to your adventure.");
}
else
{
    create_message_at_view_center("The page appears blank.");
}
instance_destroy();
