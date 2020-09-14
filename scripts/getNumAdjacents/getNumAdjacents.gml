///@param i
function getNumAdjacents(argument0, argument1) {
	var i = argument0;

	///@param j
	var j = argument1;

	///@return numAdjacents
	var numAdjacents = 0;

	if (isValidIndexTable(i+1, j) and table[i+1, j] != 0) {
		numAdjacents++;	
	}

	if (isValidIndexTable(i-1, j) and table[i-1, j] != 0) {
		numAdjacents++;	
	}

	if (isValidIndexTable(i, j+1) and table[i, j+1] != 0) {
		numAdjacents++;	
	}

	if (isValidIndexTable(i, j-1) and table[i, j-1] != 0) {
		numAdjacents++;	
	}

	return numAdjacents;


}
