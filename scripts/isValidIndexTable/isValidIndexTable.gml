///@description Controlar que los índices I e J no se salgan de los límites de la tabla

///@param i
var i = argument0;

///@param j
var j = argument1;

///@return
var validIndex = false;

var lengthX = array_height_2d(table);
var lengthY = array_length_1d(table);

if (i >= 0 and i < lengthX and j >= 0 and j < lengthY) {
	validIndex = true;
}

return validIndex;