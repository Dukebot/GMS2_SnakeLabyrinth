///@param margin
function fitIntoScreen(argument0) {
	var margin = argument0;

	if x - sprite_width/2 < 0 { x = sprite_width/2+margin; }
	if x + sprite_width/2 > room_width { x = room_width - sprite_width/2+margin; }
	if y - sprite_height/2 < 0 { y = sprite_height/2+margin; }
	if y + sprite_height/2 > room_height { y = room_height - sprite_height/2+margin; }



}
