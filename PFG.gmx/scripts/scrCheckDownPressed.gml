/// scrCheckDownPressed(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckDownPressed called.");
if(playerInst.inputType == INPUT_KEYBOARD) {
  if(keyboard_check_pressed(playerInst.downKey))
    return true;
} else if(playerInst.inputType == INPUT_XBOX360GAMEPAD) {
  if(gamepad_button_check_pressed(playerInst.gamepadNumber, playerInst.downKey))
    return true;
}

return false;
