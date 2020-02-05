//Check for game lost
var lengthX = array_height_2d(table);
var lengthY = array_length_1d(table);
var lose = true;
		
for (var i = 0; i < lengthX; i++) {
	for (var j = 0; j < lengthY; j++) {
		if (table[i, j] != 0 
		and table[i, j].sprite_index == sMovablePosition) {
			lose = false;
			break;
		}
	}
}

return lose;