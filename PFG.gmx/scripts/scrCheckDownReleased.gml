/// scrCheckDownReleased(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckDownReleased called.");
if(keyboard_check_released(playerInst.downKey)){
  return true;
} else {
  return false;
}


return false;
