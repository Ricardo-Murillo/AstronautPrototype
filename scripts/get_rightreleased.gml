///get_rightreleased()
// returns a boolean if any input that corresponds with 'right' is released
// author: Ricardo Murillo

return keyboard_check_released(vk_right) ||
       gamepad_axis_value(0, gp_axislh) < 0.40 ||
       gamepad_button_check_released(0, gp_padr) ||
       keyboard_check_released(ord('D'));

