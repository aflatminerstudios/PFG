/// scrCheckButton2Pressed(objPlayer_instance)
var playerInst = argument0;

show_debug_message("scrCheckButton2Pressed called.");
if(playerInst.inputType == INPUT_KEYBOARD) {
  if(keyboard_check_pressed(playerInst.button2Key))
    return true;
} else if(playerInst.inputType == INPUT_XBOX360GAMEPAD) {
  if(gamepad_button_check_pressed(playerInst.gamepadNumber, playerInst.button2Key))
    return true;
}

return false;
