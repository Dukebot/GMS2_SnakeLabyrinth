draw_set_color(c_white);

var yInc = 120;
var yPos = yInc*2;

//Message Game Lost
draw_set_font(global.fnt_stone2);
draw_set_halign(fa_center);
draw_text(room_width/2, yPos, "Game Lost!");
yPos += yInc;

draw_set_font(fnt_retro);

//Restart
if(draw_button_sprite(global.buttonSprite, 0, 1, 
	room_width/2 - (sprite_get_width(global.buttonSprite)/2), yPos, 
	"Restart", c_white, false
)) {
	room_restart();
}
yPos += yInc;

//Exit = Go to room menu
if(draw_button_sprite(global.buttonSprite, 0, 1, 
	room_width/2 - (sprite_get_width(global.buttonSprite)/2), yPos, 
	"Exit", c_white, false
)) {
	room_goto(rMenu);
}
