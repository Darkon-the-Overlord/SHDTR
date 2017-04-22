if (!instance_exists(dialogue)) //if the dialogue box doesn't exist, create it!
    {
        dialogue = instance_create(128, 40, obj_dialogue2);
        dialogue.text = text;
        obj_orion.state = scr_player_dialogue;
    }
else //if there's still a dialogue box active
    {
        dialogue.thepage++; //go to the next page
        dialogue.text_count = 0;
        if (dialogue.thepage > ds_list_size(dialogue.text)-1) //if the pages are past the array length
        {
            with(dialogue)
            {
                instance_destroy();
                obj_orion.state = scr_player_normal;
            }   
        }
    }
