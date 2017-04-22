var xx = 0;
var yy = 0;

switch(facing)
{   
    //Spawn the interact object according to the direction Orion is facing
    case 2:
    xx = x; yy = y-16;  
    break;
    
    case 0:
    xx = x; yy = y+16;    
    break;
    
    case 1:
    xx = x-16; yy = y;    
    break;
    
    case 3: 
    xx = x+16; yy = y;   
    break;    
}
instance_create (xx, yy, obj_interact);
