/// scrCheckDownPressed(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckDownPressed called.");
if(keyboard_check_pressed(playerInst.downKey)){
  return true;
} else {
  return false;
}


return false;
