draw_set_color(c_white);

var yIncrement = 120;
var yPos = yIncrement;

//Draw title
draw_set_font(titleFont);
draw_set_halign(fa_center);
draw_text(room_width/2, yPos, titleText);
yPos += yIncrement;


//Init button settings
draw_set_font(fnt_button);
var btnWidth = sprite_get_width(spr_button);
var arrowWidth = sprite_get_width(sArrowRight);


//Room Play Button
if(draw_button_sprite(spr_button, 0, 1, room_width/2 - btnWidth/2, yPos, "Start", c_white, false)) {
	//room_goto(rPlay);
	goToLevel();
}
yPos += yIncrement;


//Level selector:

//Previous Level
if(draw_button_sprite(sArrowLeft, 0, 1, room_width/2 - arrowWidth/2 - 100, yPos,"", c_white, false)) {
	levelAdd(-1);
}

draw_text(room_width/2, yPos + 30, string(global.LEVEL));

//Next Level
if(draw_button_sprite(sArrowRight, 0, 1, room_width/2 - arrowWidth/2 + 100, yPos,"", c_white, false)) {
	levelAdd(1);
}
yPos += yIncrement + 20;


//Exit
if(draw_button_sprite(spr_button, 0, 1, room_width/2 - btnWidth/2, yPos,"Exit", c_white, false)) {
	game_end();
	//alarm[0] = 1;
}

