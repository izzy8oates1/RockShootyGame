if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		
		case rm_win:
		case rm_death:
		game_restart();
	}
}


if(room == rm_game){
	if(score >= 1000){
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false);
	}

	if(lives <= 0){
		room_goto(rm_death);
		audio_play_sound(snd_loss, 1, false);
	}
}