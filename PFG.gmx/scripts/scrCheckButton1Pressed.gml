/// scrCheckButton1Pressed(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckButton1Pressed called.");
if(playerInst.inputType == INPUT_KEYBOARD) {
  if(keyboard_check_pressed(playerInst.button1Key))
    return true;
} else if(playerInst.inputType == INPUT_XBOX360GAMEPAD) {
  if(gamepad_button_check_pressed(playerInst.gamepadNumber, playerInst.button1Key))
    return true;
}

return false;
