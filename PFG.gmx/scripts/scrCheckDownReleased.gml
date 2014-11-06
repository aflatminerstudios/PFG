/// scrCheckDownReleased(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckDownReleased called.");
if(playerInst.inputType == INPUT_KEYBOARD) {
  if(keyboard_check_released(playerInst.downKey))
    return true;
} else if(playerInst.inputType == INPUT_XBOX360GAMEPAD) {
  if(gamepad_button_check_released(playerInst.gamepadNumber, playerInst.downKey))
    return true;
}

return false;
