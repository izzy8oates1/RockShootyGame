if(room == rm_start){
	audio_play_sound(snd_song, 2, true);
}

if(room == rm_game){
	repeat(6){
		var xx = choose (
			irandom_range(0, room_width*.3),
			irandom_range(room_width*.7, room_width),
		);
		var yy = choose (
			irandom_range(0, room_height*.3),
			irandom_range(room_height*.7, room_height),
		);
	
		instance_create_layer(xx, yy, "Instances", obj_astroid);
		}
		
		alarm[0] = 60;
}
if(room == rm_death){
	if(audio_is_playing(snd_song)){
	audio_stop_sound(snd_song)
	}
}
if(room == rm_win){
	if(audio_is_playing(snd_song)){
	audio_stop_sound(snd_song)
	}
}
