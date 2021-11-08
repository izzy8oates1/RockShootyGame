switch(room){
	case rm_game:
		draw_text(20, 20, "you've scored "+string(score)+" points.");
		draw_text(20, 40, "you have "+string(lives)+" lives.");
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "rock shooty game", 
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200,
@"get 1000 points to win.

z = move
left/right keys = rotate
x = shoot

press enter to begin.
"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
				draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 200, "good job, you won.", 
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 300, "press enter to play again."
		);
		
		break;
	
	case rm_death:
				draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 100, "you're dead lol.", 
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200, "you scored "+string(score)+" points."
		);
		draw_text(
			room_width/2, 300, "you're still dead though."
		);
		draw_text(
			room_width/2, 400, "press enter to play again."
		);
	
};