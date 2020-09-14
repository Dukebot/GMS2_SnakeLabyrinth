function createInTableMovables(argument0, argument1) {
	
	///@param i
	var i = argument0;
	///@param j
	var j = argument1;

	//En la versión antigua de game maker esto funcionaba
	//var lengthX = array_height_2d(table);
	//var lengthY = array_length_1d(table);
	
	//Nueva versión de GAME MAKER
	var lengthX = array_length_1d(table);
	var lengthY = array_length_2d(table, 0);

	var iNext, jNext;


	//Casilla de la derecha
	iNext = i + 1;
	jNext = j;

	if (iNext >= 0 and iNext < lengthX
	and jNext >= 0 and jNext < lengthY) {
		if (table[iNext, jNext] == 0) {
			var objCreated = createInTable(iNext, jNext, oElement, sMovablePosition);
			objCreated.direction = 0;
		}
	}


	//Casilla de la izquierda
	iNext = i - 1;
	jNext = j;

	if (iNext >= 0 and iNext < lengthX
	and jNext >= 0 and jNext < lengthY) {
		if (table[iNext, jNext] == 0) {
			var objCreated = createInTable(iNext, jNext, oElement, sMovablePosition);
			objCreated.direction = 180;
		}
	}


	//Casilla de abajo
	iNext = i;
	jNext = j + 1;

	if (iNext >= 0 and iNext < lengthX
	and jNext >= 0 and jNext < lengthY) {
		if (table[iNext, jNext] == 0) {
			var objCreated = createInTable(iNext, jNext, oElement, sMovablePosition);
			objCreated.direction = 270;
		}
	}


	//Casilla de arriba
	iNext = i;
	jNext = j - 1;

	if (iNext >= 0 and iNext < lengthX
	and jNext >= 0 and jNext < lengthY) {
		if (table[iNext, jNext] == 0) {
			var objCreated = createInTable(iNext, jNext, oElement, sMovablePosition);
			objCreated.direction = 90;
		}
	}
}
