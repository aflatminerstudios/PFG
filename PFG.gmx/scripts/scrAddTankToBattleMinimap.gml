/// scrAddTankToBattleMinimap(tankObjectType)
tankObjectType = argument0;

// Add in object type checking and exit early if invalid (with log) - TODO
//if(tankObjectType doesn't exist) {
//  show_debug_message("scrAddTankToBattleMinimap - Invalid tankObjectType.");
//  return;
//}

with(objBattleMinimap){
  instance_create(startPoint[0], startPoint[1], tankObjectType);
}