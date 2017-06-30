///get_input()

//Movement input variables
up = keyboard_check(vk_up) || gamepad_axis_value(0, gp_axislv) <= -0.5 || gamepad_button_check(0, gp_padu);
right = keyboard_check(vk_right) || gamepad_axis_value(0, gp_axislh) >= 0.5 || gamepad_button_check(0, gp_padr);
left = keyboard_check(vk_left) || gamepad_axis_value(0, gp_axislh) <= -0.5 || gamepad_button_check(0, gp_padl);
down = keyboard_check(vk_down) || gamepad_axis_value(0, gp_axislv) >= 0.5 || gamepad_button_check(0, gp_padd);

//Menu navigation input variables

up_pressed = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
right_pressed = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr);
left_pressed = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl);
down_pressed = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd);

//Action/Back input variables
start = keyboard_check_pressed(ord('C')) || gamepad_button_check_pressed(0, gp_start);
action = keyboard_check_pressed(ord('X')) || gamepad_button_check_pressed(0, gp_face2);
back = keyboard_check_pressed(ord('Z')) || gamepad_button_check_pressed(0, gp_face1);
back_held = keyboard_check(ord('Z')) || gamepad_button_check(0, gp_face1);
