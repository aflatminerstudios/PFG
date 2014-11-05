/// scrCheckRightPressed(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckRightPressed called.");
if(keyboard_check_pressed(playerInst.rightKey)){
  return true;
} else {
  return false;
}


return false;
