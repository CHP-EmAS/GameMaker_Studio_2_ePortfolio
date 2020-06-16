//Get Player Input
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)or keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

key_activate = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(vk_shift);
key_item = keyboard_check_pressed(vk_control);

input_direction = point_direction(0,0,key_right-key_left,key_down-key_up);
input_magnitude = (key_right - key_left != 0) or (key_down - key_up != 0);

//Movement
h_speed = lengthdir_x(input_magnitude * speed_walk, input_direction);
v_speed = lengthdir_y(input_magnitude * speed_walk, input_direction);

scr_Hero_collision();

//Update Sprite Index
var _old_sprite = sprite_index;

if(input_magnitude != 0) {
	direction = input_direction;
	sprite_index = spr_walk;
} else sprite_index = spr_idle 

if (_old_sprite != sprite_index) local_frame = 0;

//Update Image Index
scr_Hero_animate_spr();