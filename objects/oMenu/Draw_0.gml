draw_set_color(c_white);

var yIncrement = 120;
var yPos = yIncrement;

//Draw title
draw_set_font(global.fnt_stone3);
draw_set_halign(fa_center);
draw_text(room_width/2, yPos, "Snake Labyrinth");
yPos += yIncrement;

//Init button settings
//draw_set_font(fnt_button);
draw_set_font(fnt_retro);
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


//Music
if(draw_button_sprite(spr_button, 0, 1, room_width/2 - btnWidth/2, yPos, "Toggle Music", c_white, false)) {
	global.backgroundMusic = not global.backgroundMusic;
	
	audio_stop_all();
	if (global.backgroundMusic) {
		audio_play_sound(sndBackground, 0, 1);
	}
}

