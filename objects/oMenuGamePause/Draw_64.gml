draw_set_color(c_white);



//Define starting vertical point for drawing the menu
var yInc = 120;
var posY = yInc;


//Title of the menu: GAME PAUSED
draw_set_font(global.fnt_stone2);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(room_width/2, posY, "Game Paused!");
posY += yInc;


var posX = room_width/2 - sprite_get_width(global.buttonSprite)/2;
draw_set_font(fnt_retro);

//Continue Level
if(draw_button_sprite(global.buttonSprite, 0, 1, posX, posY, "Continue", c_white, false)) {
	instance_destroy();
}
posY += yInc;

//Restart Level
if(draw_button_sprite(global.buttonSprite, 0, 1, posX, posY, "Restart", c_white, false)) {
	room_restart();
}
posY += yInc;

//Exit = Go to room menu
if(draw_button_sprite(global.buttonSprite, 0, 1, posX, posY, "Exit", c_white, false)) {
	room_goto(rMenu);
}
