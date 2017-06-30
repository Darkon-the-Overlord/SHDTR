///create_follower(character)

character = argument0;

o_orion.followers++;

newfollower = instance_create(o_orion.x, o_orion.y, character);

with (newfollower)
{
    follow_dis = 14*o_orion.followers;
}
