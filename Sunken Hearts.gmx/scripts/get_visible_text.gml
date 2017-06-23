///get_visible_text(pause_time)
var pause_time = argument0;
var new_string = string_copy(text[text_page], 1, text_count);

if (string_length(new_string) > string_length(text_visible))
{
    if (instance_exists(o_dialog))
    {
        with (o_dialog)
        {
            if (alarm[1] = -1)
            {
                alarm[1] = seconds_to_steps(0.0625);
                audio_play_sound_effect(a_talk_generic, false, 50);
            }
        }
    }

    //Check for the last key
    var last_char = string_char_at(new_string, text_count);
    
    //Check for a pause
    if (is_in_array(last_char, array(".", ",", "!", "?")) && text_count < string_length(text[text_page]))
    {
        alarm[0] = pause_time;
    }
    
    //Set the visible text
    text_visible = new_string;
}
