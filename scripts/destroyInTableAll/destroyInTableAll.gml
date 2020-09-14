///@param sprite
function destroyInTableAll() {
	var sprite = 0;
	if (argument_count > 0) sprite = argument[0];

	//Versión antigua
	//var lengthX = array_height_2d(table);
	//var lengthY = array_length_1d(table);
	
	//Nueva versión
	var lengthX = array_length_1d(table);
	var lengthY = array_length_2d(table, 0);

	for (var i = 0; i < lengthX; i++) {
		for (var j = 0; j < lengthY; j++) {
			if (table[i, j] != 0) {
				if (sprite == 0 or table[i, j].sprite_index == sprite) {
					instance_destroy(table[i, j]);
					table[i, j] = 0;
				}
			}
		}
	}


}
