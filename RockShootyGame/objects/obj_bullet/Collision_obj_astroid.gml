instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_large_astroid){
		repeat(2){
		var new_astroid = instance_create_layer(x,y, "Instances",obj_astroid)
		new_astroid.sprite_index = spr_medium_astroid;
		}
	} else if (sprite_index == spr_medium_astroid){
		repeat(2){
		var new_astroid = instance_create_layer(x,y, "Instances",obj_astroid)
		new_astroid.sprite_index = spr_small_astroid;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y, "Instances",obj_debris);
	}
}