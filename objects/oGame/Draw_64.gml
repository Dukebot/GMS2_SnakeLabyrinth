draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

//DRAW THE REST OF THE SNAKE
var posX = 10*size + size/2;
var posY = 10*size + size/2;
draw_sprite_ext(snakeSprite, 1, posX, posY, 1, 1, 90, c_white, 1);
posY += size;
draw_sprite_ext(snakeSprite, 1, posX, posY, 1, 1, 90, c_white, 1);

//DRAW LIMITING BLOCS
for (var i = 0; i < array_height_2d(table); i++) {
	var posX = size/2 + i*size;
	var posY = size/2 + 10*size;
	
	if (posX != (10*size + size/2)) {
		draw_sprite_ext(sObstacle, 1, posX, posY, 1, 1, 0, c_white, 1);
		posY += size;
		draw_sprite_ext(sObstacle, 1, posX, posY, 1, 1, 0, c_white, 1);
	}
	
}

//DRAW LEVEL
draw_text(15, room_height-15, "LEVEL " + string(global.LEVEL));

//DRAW PATH LENGTH
//draw_text(room_width - 10, 100, "Path Length " + string(array_length_1d(path)));

//Botón de pausa
if (not instance_exists(oMenuGamePause)) {
	if(draw_button_sprite(global.buttonSprite, 0, 1, 
		room_width - spriteW(global.buttonSprite) - 10, 
		room_height - spriteH(global.buttonSprite) - 10, 
		"Menu", c_white, false)
	) {
		instanceCreate(oMenuGamePause);
	}
}