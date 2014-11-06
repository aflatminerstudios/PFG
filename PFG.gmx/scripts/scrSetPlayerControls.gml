/// scrSetPlayerControls(objPlayer_instance, inputType, gamepadNumber, up, down, left, right, button1, button2, button3)
// inputType is INPUT_KEYBOARD or INPUT_XBOX360GAMEPAD
// For keyboards, keys come in the form ord('W') or vk_left
// For gamepads, controller 1 is 0, controller 2 is 1, etc.
//  buttons are 

var objPlayer_instance = argument0;
var inputTypeIn = argument1;
var gamepadNumberIn = argument2;
var up = argument3;
var down = argument4;
var left = argument5;
var right = argument6;
var button1 = argument7;
var button2 = argument8;
var button3 = argument9;

with(objPlayer_instance) {
  inputType = inputTypeIn;
  gamepadNumber = gamepadNumberIn;
  upKey = up;
  downKey = down;
  leftKey = left;
  rightKey = right;
  button1Key = button1;
  button2Key = button2;
  button3Key = button3;
}
