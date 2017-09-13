///get_left()
//returns a boolean if any input that corresponds with 'left' is pressed
//author: Ricardo Murillo
return keyboard_check(vk_left) || gamepad_axis_value(0, gp_axislh) < -0.40 || gamepad_button_check(0, gp_padl) || keyboard_check(ord('A'));

