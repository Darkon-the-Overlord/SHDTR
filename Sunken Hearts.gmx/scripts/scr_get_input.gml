//Shortcuts for keys and buttons
up_key = keyboard_check(vk_up) || gamepad_axis_value(0, gp_axislv) <= -0.5 || gamepad_button_check(0, gp_padu);
down_key = keyboard_check(vk_down) || gamepad_axis_value(0, gp_axislv) >= 0.5  || gamepad_button_check(0, gp_padd);
left_key = keyboard_check(vk_left) || gamepad_axis_value(0, gp_axislh) <= -0.5 || gamepad_button_check(0, gp_padl);
right_key = keyboard_check(vk_right) || gamepad_axis_value(0, gp_axislh) >= 0.5  || gamepad_button_check(0, gp_padr);
space = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face4);
action_key = keyboard_check_pressed(ord('Z')) || gamepad_button_check_pressed(0, gp_face1);
action_key_held = keyboard_check(ord('Z')) || gamepad_button_check(0, gp_face1);
