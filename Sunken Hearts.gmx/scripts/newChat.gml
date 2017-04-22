///newChat(messageArray, Name, Portrait, Expression, Voice);

var sent = argument0;
var name = argument1;
var portrait = argument2;
var expression = argument3;
var voice = argument4;
var text = instance_create(0, 0, obj_dialogue);
var expPortrait = noone;

text.creator = creator;
text.portrait = portrait;
text.voice = voice;
text.expression = expression;
text.speakerName = name;



for (i = 0; i < array_length_1d(sent); i++)
{
    text.message = sent;
}
