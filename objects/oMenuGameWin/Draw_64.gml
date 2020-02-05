draw_set_color(c_white);

var incrementY = 120;
var posY = incrementY*2;

//Message Game Win
draw_set_font(global.fnt_stone2);
draw_set_halign(fa_center);
draw_text(room_width/2, posY, "Game Win!");
posY += incrementY;

draw_set_font(fnt_retro);

//Next Level
if(draw_button_sprite(spr_button, 0, 1, 
	room_width/2 - (sprite_get_width(spr_button)/2), posY, 
	"Next Level", c_white, false
)) {
	levelAdd(1);
	
	//Para modo autogenerado
	if (room == rPlay) {
		room_restart();
	//Para modo mapas manuales.
	} else {
		goToLevel();
	}
}
posY += incrementY;


//Exit = Go to room menu
if(draw_button_sprite(spr_button, 0, 1, 
	room_width/2 - (sprite_get_width(spr_button)/2),
	posY, 
	"Exit", c_white, false
)) {
	levelAdd(1);
	
	room_goto(rMenu);
}
