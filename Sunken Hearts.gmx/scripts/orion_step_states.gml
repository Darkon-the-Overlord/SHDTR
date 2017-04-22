switch (state)
{
    case states.normal:   scr_player_normal();   break;
    case states.dialogue: scr_player_dialogue(); break;
    case states.cutscene: scr_player_cutscene(); break;
}
