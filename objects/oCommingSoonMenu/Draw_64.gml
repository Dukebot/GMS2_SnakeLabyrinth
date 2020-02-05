draw_set_color(c_white);

var yInc = 100;
var posX = room_width/2 - sprite_get_width(spr_button)/2;
var posY = yInc*2;


//Message Juego Pausado
draw_set_font(global.fnt_stone3);
draw_set_halign(fa_center);

draw_text(room_width/2, posY, "More Levels");
posY += yInc;

draw_text(room_width/2, posY, "Comming Soon!");
posY += yInc;


//Exit = Go to room menu
draw_set_font(fnt_button);

if(draw_button_sprite(spr_button, 0, 1, posX, posY, "Exit", c_white, false)) {
	room_goto(rMenu);
}
