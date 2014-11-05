/// scrCheckUpPressed(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckUpPressed called.");
if(keyboard_check_pressed(playerInst.upKey)){
  return true;
} else {
  return false;
}


return false;
