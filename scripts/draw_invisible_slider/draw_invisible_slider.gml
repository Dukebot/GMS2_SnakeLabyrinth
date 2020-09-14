/// @description draw_invisible_slider(value,x1,y1,x2,y2)
/// @param value
/// @param x1
/// @param y1
/// @param x2
/// @param y2
function draw_invisible_slider() {
	var value,x1,y1,x2,y2;
	value = argument[0];
	x1 = argument[1];
	y1 = argument[2];
	x2 = argument[3];
	y2 = argument[4];

	if(mouse_check_button(mb_left) && point_in_rectangle(mouse_x,mouse_y,x1,y1,x2,y2))
	{
	value = (mouse_x - x1)/(x2 - x1);
	}

	return value;



}
