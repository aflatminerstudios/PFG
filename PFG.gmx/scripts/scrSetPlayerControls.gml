/// scrSetPlayerControls(objPlayer_instance, inputType, up, down, left, right, button1, button2, button3)
// inputType is INPUT_KEYBOARD or INPUT_XBOX360GAMEPAD
// For keyboards, keys come in the form ord('W') or vk_left

var objPlayer_instance = argument0;
var inputTypeIn = argument1;
var up = argument2;
var down = argument3;
var left = argument4;
var right = argument5;
var button1 = argument6;
var button2 = argument7;
var button3 = argument8;

with(objPlayer_instance) {
  inputType = inputTypeIn;
  upKey = up;
  downKey = down;
  leftKey = left;
  rightKey = right;
  button1Key = button1;
  button2Key = button2;
  button3Key = button3;
}
