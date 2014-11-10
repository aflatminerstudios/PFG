/// scrCheckButtonReleased(objPlayer_instance, button)
//  buttons are UP, DOWN, LEFT, RIGHT, BUTTON1, BUTTON2, BUTTON3

var playerInst = argument0;
var button = argument1;

debug_log("scrCheckButtonReleased called.");

var buttonToCheck = null;

switch(button){  
    case UP:
      buttonToCheck = playerInst.upKey;
      break;
    case DOWN:
      buttonToCheck = playerInst.downKey;
      break;
    case LEFT:
      buttonToCheck = playerInst.leftKey;
      break;
    case RIGHT:
      buttonToCheck = playerInst.rightKey;
      break;
    case BUTTON1:
      buttonToCheck = playerInst.button1Key;
      break;
    case BUTTON2:
      buttonToCheck = playerInst.button2Key;
      break;
    case BUTTON3:
      buttonToCheck = playerInst.button3Key;
      break;
    default:
      debug_log("Invalid button type in scrCheckPressed.");
      return false;
      break;
  }

if(playerInst.inputType == INPUT_KEYBOARD) {
  if(keyboard_check_released(buttonToCheck))
    return true;
} else if(playerInst.inputType == INPUT_XBOX360GAMEPAD) {
  if(gamepad_button_check_released(playerInst.gamepadNumber, buttonToCheck))
    return true;
}

return false;
