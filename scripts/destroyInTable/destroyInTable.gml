///@param i
function destroyInTable(argument0, argument1) {
	var i = argument0;
	///@param j
	var j = argument1;

	instance_destroy(table[i, j]);
	table[i, j] = 0;


}
