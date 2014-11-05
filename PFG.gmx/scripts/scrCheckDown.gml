/// scrCheckDown(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckDown called.");
if(keyboard_check(playerInst.downKey)){
  return true;
} else {
  return false;
}


return false;
