//get_right()
//returns a boolean if any input that corresponds with 'right' is pressed
//author: Ricardo Murillo
return keyboard_check(vk_right) || gamepad_axis_value(0, gp_axislh) >  0.40 || gamepad_button_check(0, gp_padr) || keyboard_check(ord('D'));

