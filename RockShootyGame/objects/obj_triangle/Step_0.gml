if(keyboard_check(vk_left)){
	image_angle = image_angle + 5;
}

if(keyboard_check(vk_right)){
	image_angle = image_angle - 5;
}

if keyboard_check(ord("Z")){
	motion_add(image_angle, .05)
}

move_wrap(true,true,sprite_width/2);

if keyboard_check_pressed(ord("X")){
	var inst = instance_create_layer(x,y, "Instances", obj_bullet);
	inst.direction = image_angle;
}

move_wrap(true,true,sprite_width/2);