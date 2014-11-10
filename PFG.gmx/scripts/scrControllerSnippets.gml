/*
///scrCheckController(ctrl)
// From Soul Shepherds
/// Move using controller 0's right stick
hspeed += gamepad_axis_value(0, gp_axisrh) * vxDelta *2;
vspeed += gamepad_axis_value(0, gp_axisrv) * vyDelta *2;
*/

// gamepad_button_check_pressed(device, button);
// gamepad_set_axis_deadzone(device, deadzone); // 0-1
// gamepad_set_vibration(device, left_motor, right_motor); // 0-1
// gamepad_button_value(device, button); // for analog buttons (shoulder)
// gamepad_set_button_threshold(device, threshold); // for analog buttons to act as pressed
// gamepad_is_connected(slot)
/* 
  // Loop through gamepad slots and determine if anything is connected
  var gp_num = gamepad_get_device_count();
  for (var i = 0; i < gp_num; i++;)
    {
    if gamepad_is_connected(i) global.gp[i] = true else global.gp[i] = false;
    }
*/

/*
ctrl = argument0;

var pressed = false;

if (gamepad_button_check_pressed(ctrl, gp_face1)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_face2)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_face3)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_face4)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_select)) {
    pressed = true;
}

if (gamepad_button_check_pressed(ctrl, gp_start)) {
    pressed = true;
}

return pressed;
*/
