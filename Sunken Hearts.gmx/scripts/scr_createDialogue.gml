if (!instance_exists(dialog)) //if the dialogue box doesn't exist, create it!
    {
        dialog = instance_create(128, 40, obj_dialog);
        dialog.text = text;
        obj_orion.state = scr_player_dialogue;
    }
else //if there's still a dialogue box active
    {
        dialog.text_page++; //go to the next page
        dialog.text_count = 0;
        if (dialog.text_page > ds_list_size(text)-1) //if the pages are past the array length
        {
            with(dialog)
            {
                instance_destroy();
                obj_orion.state = scr_player_normal;
            }   
        }
    }
