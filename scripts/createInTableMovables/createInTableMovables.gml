///@param i
var i = argument0;

///@param j
var j = argument1;

var lengthX = array_height_2d(table);
var lengthY = array_length_1d(table);

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
