///scr_string_copy_words(string, index, count);

var str   = argument0;
var index = argument1;
var count = ceil(argument2);//ceil rounds number up

var char = string_char_at(str, count);
while (char != " " && char != "")
{
    if ( !audio_is_playing( snd_talk01 ) ) audio_play_sound( snd_talk01, 1, false );
    count++;
    char = string_char_at(str, count);
    
}

if char = ""
{
    if (!audio_is_playing( snd_talk01 ) ) audio_stop_sound( snd_talk01);
}

var return_str = string_copy(str, index, count);
return return_str;
