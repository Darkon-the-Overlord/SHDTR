//Creates a name tag for an NPC if there is one

if (portrait != "none")//If there is a character portrait
{
    if (orionUp)//If Orion is in the upper bounds of the camera
        {
            //Place the name tag in the appropriate place on the bottom of the screen
            nameX = 46;//Placement of the name
            nameLength = real(string_length(speakerName));//The length of the name
            
            if (nameLength > 4)//If the name is longer than 4 characters
            {
                nameX += ((nameLength-4)*charWidth);//Increase the length of the name tag by the amount of characters
            }
            else if (nameLength <= 4)
            {
                nameX = 46;
            }
                
            draw_sprite(spr_nameBox, 2, 34, view_hview[0]+50);
            draw_sprite_ext(spr_nameBox, 1, 52, view_hview[0]+50, nameLength, 1, image_angle, image_blend, image_alpha);
            draw_sprite(spr_nameBox, 0, (52+(20*nameLength)-(6*nameLength)), view_hview[0]+50);         
            draw_text(50, view_hview[0]+64, speakerName);
                
        }
    else
        {
            //Place the name tag in the appropriate place on the top of the screen
            nameX = 46;
            nameLength = real(string_length(speakerName));
            
            if (nameLength > 4)
            {
                nameX += ((nameLength-4)*charWidth);
            }
            else if (nameLength <= 4)
            {
                nameX = 46;
            }
                
            draw_sprite(spr_nameBox, 2, 34, view_hview[0]-108);
            draw_sprite_ext(spr_nameBox, 1, 52, view_hview[0]-108, nameLength, 1, image_angle, image_blend, image_alpha);
            draw_sprite(spr_nameBox, 0, (52+(20*nameLength)-(6*nameLength)), view_hview[0]-108);         
            draw_text(50, view_hview[0]-94, speakerName);
        }
}
else if (portrait = "none")//If there is no character portrait
{
    if (speakerName != "none")//If the npc has a name
    {
        if (orionUp)
        {
        
            nameX = 46;
            nameLength = real(string_length(speakerName));
                
            if (nameLength > 4)
            {
                nameX += ((nameLength-4)*charWidth);
            }
            else if (nameLength <= 4)
            {
                nameX = 46;
            }
                
            draw_sprite(spr_nameBox, 2, 98, view_hview[0]+50);
            draw_sprite_ext(spr_nameBox, 1, 116, view_hview[0]+50, nameLength, 1, image_angle, image_blend, image_alpha);
            draw_sprite(spr_nameBox, 0, (116+(20*nameLength)-(6*nameLength)), view_hview[0]+50);         
            draw_text(114, view_hview[0]+64, speakerName);
                
        }
        else
            {
                nameX = 46;
                nameLength = real(string_length(speakerName));
                
                if (nameLength > 4)
                {
                    nameX += ((nameLength-4)*charWidth);
                }
                else if (nameLength <= 4)
                {
                    nameX = 46;
                }
                
                draw_sprite(spr_nameBox, 2, 98, view_hview[0]-108);
                draw_sprite_ext(spr_nameBox, 1, 116, view_hview[0]-108, nameLength, 1, image_angle, image_blend, image_alpha);
                draw_sprite(spr_nameBox, 0, (116+(20*nameLength)-(6*nameLength)), view_hview[0]-108);         
                draw_text(114, view_hview[0]-94, speakerName);
        }
    }
}
