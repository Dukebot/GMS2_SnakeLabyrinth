//Check for game win
var lengthX = array_height_2d(table);
var lengthY = array_length_1d(table);
var win = true;
		
for (var i = 0; i < lengthX; i++) {
	for (var j = 0; j < lengthY; j++) {
		if (table[i, j] == 0 or table[i, j].sprite_index == sMovablePosition) {
			win = false;	
		}
	}
}

return win;