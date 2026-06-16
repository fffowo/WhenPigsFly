var _hor = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
var _ver = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);


move_and_collide(_hor * 16, _ver * 32, 1, undefined, undefined, undefined);

