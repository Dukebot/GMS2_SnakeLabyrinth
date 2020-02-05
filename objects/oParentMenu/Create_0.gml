titleText = "Menu Title";
titleFont = global.fnt_stone2;

buttons[0] = [
	sButton, 
	0, 
	1, 
	"Button"
];

//Next Level
if(draw_button_sprite(sArrowRight, 0, 1, room_width/2 - arrowWidth/2 + 100, yPos,"", c_white, false)) {
	levelAdd(1);
}