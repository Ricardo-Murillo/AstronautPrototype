///get_leftreleased()
// returns a boolean if any input that corresponds with 'left' is released
// author: Ricardo Murillo

return keyboard_check_released(vk_left) ||
       gamepad_axis_value(0, gp_axislh) > -0.40 ||
       gamepad_button_check_released(0, gp_padl) ||
       keyboard_check_released(ord('A'));

