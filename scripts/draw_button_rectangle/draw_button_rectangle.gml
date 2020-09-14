/// @description draw_button_rectangle(x1,y1,x2,y2,outline,hover_color,label, label_color);
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param outline
/// @param hover_color
/// @param label
/// @param  label_color
function draw_button_rectangle() {


	var x1, y1, x2, y2, outline, label, label_color;
	x1 = argument[0];
	y1 = argument[1];
	x2 = argument[2];
	y2 = argument[3];
	outline = argument[4];
	hover_color = argument[5];
	label = argument[6];
	label_color = argument[7];

	var r = 0;

	if( mouse_x = median(mouse_x,x1,x2) && mouse_y = median(mouse_y,y1,y2))
	{
	draw_set_color(hover_color);

	if(mouse_check_button_released(mb_left)) r = 1;
	}

	draw_rectangle(x1,y1,x2,y2,outline);

	draw_set_color(label_color);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(mean(x1,x2),mean(y1,y2),string_hash_to_newline(label));

	return r;






}
