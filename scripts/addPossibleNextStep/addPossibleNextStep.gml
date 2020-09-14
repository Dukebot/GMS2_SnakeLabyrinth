///@param possibleNextStep Array
function addPossibleNextStep(argument0, argument1, argument2, argument3) {
	var possibleNextStep = argument0;

	///@param iIndex
	var i = argument1;

	///@param jIndex
	var j = argument2;

	///@param movementString
	var movementString = argument3;

	if (isValidIndexTable(i, j) and table[i, j] != 0) {
		var numAdjacents = getNumAdjacents(i, j);
		possibleNextStep = arrayAdd(possibleNextStep, [i, j, movementString, numAdjacents]);
	}

	return possibleNextStep;


}
