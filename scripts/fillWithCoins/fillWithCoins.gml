function fillWithCoins() {
	//Versión antigua de GM
	//var lengthX = array_height_2d(table);
	//var lengthY = array_length_1d(table);
	
	//Nueva versión
	var lengthX = array_length_1d(table);
	var lengthY = array_length_2d(table, 0);

	for (var i = 0; i < lengthX; i++) {
		for (var j = 0; j < lengthY; j++) {
			var posX = size/2 + size*i;
			var posY = size/2 + size*j;
		
			if (table[i, j] = 0 or table[i, j].sprite_index == sMovablePosition) {
				//table[i, j] = instanceCreate(oCoin, posX, posY);
				instanceCreate(oCoin, posX, posY);
			}
		}
	}


}
