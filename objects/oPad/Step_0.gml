//Update PAD sprite
sprite_index = spr_dpad_0;
if (mouse_check_button(mb_left)) {
	
	if (mouse_x > x - sprite_width/2
	and mouse_x < padX
	and mouse_y > padY - sprite_height/4
	and mouse_y < padY + sprite_height/4) {
		sprite_index = spr_dpad_left;
	}
	
	if (mouse_x > padX
	and mouse_x < padX + sprite_width/2
	and mouse_y > padY - sprite_height/4
	and mouse_y < padY + sprite_height/4) {
		sprite_index = spr_dpad_right;
	}
	
	if (mouse_x > padX - sprite_width/4
	and mouse_x < padX + sprite_width/4
	and mouse_y > padY - sprite_height/2
	and mouse_y < padY) {
		sprite_index = spr_dpad_up;
	}
	
	if (mouse_x > padX - sprite_width/4
	and mouse_x < padX + sprite_width/4
	and mouse_y > padY
	and mouse_y < padY + sprite_height/2) {
		sprite_index = spr_dpad_down;
	}
}

//Update input
left = false;
right = false;
up = false;
down = false;

time++;
if ((mouse_check_button(mb_left) and time > inputReadDelay)) {
	time = 0;
	
	if (mouse_x > x - sprite_width/2
	and mouse_x < padX
	and mouse_y > padY - sprite_height/4
	and mouse_y < padY + sprite_height/4) {
		left = true;
	}
	
	if (mouse_x > padX
	and mouse_x < padX + sprite_width/2
	and mouse_y > padY - sprite_height/4
	and mouse_y < padY + sprite_height/4) {
		right = true;
	}
	
	if (mouse_x > padX - sprite_width/4
	and mouse_x < padX + sprite_width/4
	and mouse_y > padY - sprite_height/2
	and mouse_y < padY) {
		up = true;
	}
	
	if (mouse_x > padX - sprite_width/4
	and mouse_x < padX + sprite_width/4
	and mouse_y > padY
	and mouse_y < padY + sprite_height/2) {
		down = true;
	}
}