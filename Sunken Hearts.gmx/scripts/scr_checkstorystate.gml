//If Orion is in a prologue state, so are his sprites
if orionState = 0
{
    orionIdleDown = spr_orionNormIdle_D;
    orionIdleUp = spr_orionNormIdle_U;
    orionIdleLeft = spr_orionNormIdle_L;
    orionIdleRight = spr_orionNormIdle_R;
    orionWalkDown = spr_orionNormWalk_D;
    orionWalkUp = spr_orionNormWalk_U;
    orionWalkLeft = spr_orionNormWalk_L;
    orionWalkRight = spr_orionNormWalk_R;
}

//If Orion is in his standard Robotic state
else if orionState = 1
{
    orionIdleDown = spr_orionRoboIdle_D;
    orionIdleUp = spr_orionRoboIdle_U;
    orionIdleLeft = spr_orionRoboIdle_L;
    orionIdleRight = spr_orionRoboIdle_R;
    orionWalkDown = spr_orionRoboWalk_D;
    orionWalkUp = spr_orionRoboWalk_U;
    orionWalkLeft = spr_orionRoboWalk_L;
    orionWalkRight = spr_orionRoboWalk_R;
}
