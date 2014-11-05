/// scrCheckLeftPressed(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckLeftPressed called.");
if(keyboard_check_pressed(playerInst.leftKey)){
  return true;
} else {
  return false;
}


return false;
