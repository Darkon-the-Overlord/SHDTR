///menu_option_save()
save_game("save.dat");
audio_play_sound_effect(a_menu_blip_save, 0, 80);
create_message_at_view_center("Your adventure has been recorded!");
instance_destroy();
