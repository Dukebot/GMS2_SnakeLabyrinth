///@param iIndex
function destroyBlocRecursive(argument0, argument1, argument2, argument3) {
	var i = argument0;

	///@param jIndex
	var j = argument1;

	///@param pathLength
	var pathLength = argument2;

	///@param movementString
	var movementString = argument3;

	iterations++;

	//No se debería dar el caso dónde intentamos destruir una posición vacía
	if (table[i, j] = 0) show_error("Trying to destroy an empty position.", true);

	//Destruimos el objeto que hay en la tabla
	instance_destroy(table[i, j]);
	table[i, j] = 0;

	//Guardamos el paso seguido en el camino
	path[pathLengthCurrent] = [i, j, movementString];
	pathLengthCurrent++;

	//Si ya tenemos la longitud deseada terminamos la ejecución
	printVar("pathLengthCurrent", pathLengthCurrent);
	if pathLengthCurrent == pathLength exit;

	//Añadimos las posibilidades para el siguiente movimiento
	var possibleNextSteps = 0;
	possibleNextSteps = addPossibleNextStep(possibleNextSteps, i+1, j, "right");
	possibleNextSteps = addPossibleNextStep(possibleNextSteps, i-1, j, "left");
	possibleNextSteps = addPossibleNextStep(possibleNextSteps, i, j+1, "down");
	possibleNextSteps = addPossibleNextStep(possibleNextSteps, i, j-1, "up");

	//Aplicamos aletoriedad a la hora de recorrer las posibilidades
	possibleNextSteps = arrayDisorder(possibleNextSteps);
	//if (random(1) < 0.25) possibleNextSteps = sortByMostAdjacent(possibleNextSteps);


	//Iteramos entre las posibilidades para encontrar un camino válido
	for (var _i = 0; _i < array_length_1d(possibleNextSteps); _i++) {
		var nextStep = possibleNextSteps[_i];	
		var iNext = nextStep[0];
		var jNext = nextStep[1];
		movementString = nextStep[2];
	
		destroyBlocRecursive(iNext, jNext, pathLength, movementString);
	
		if pathLengthCurrent == pathLength exit;
	}


	createInTable(i, j, oObstacle);
	pathLengthCurrent--;
	path[pathLengthCurrent] = 0;


}


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


///@param possibleNextSteps
function sortByMostAdjacent(argument0) {
	var possibleNextSteps = argument0;

	///@return arraySorted
	var arraySorted = 0;
	
	for (var _i = 0; _i < array_length_1d(possibleNextSteps); _i++) {
		var maxValue = 0;
		var maxValuePos = 0;
	
		for (var _j = 0; _j < array_length_1d(possibleNextSteps); _j++) {
			var possibleNextStep = possibleNextSteps[_j];
		
			if (possibleNextStep != 0) {
				var numAdjacent = possibleNextStep[3];
			
				if (numAdjacent >= maxValue) {
					maxValue = numAdjacent;
					maxValuePos = _j;
				}
			}
		}
	
		arraySorted[_i] = possibleNextSteps[maxValuePos];
		possibleNextSteps[maxValuePos] = 0;
	}
	
	return arraySorted;
}


///@param chance
function applyNoise(argument0) {
	var chance = argument0;

	var lengthX = array_height_2d(table);
	var lengthY = array_length_1d(table);

	for (var i = 0; i < lengthX; i++) {
		for (var j = 0; j < lengthY; j++) {
		
			if (random(1) < chance) {
				instance_destroy(table[i, j]);
			}
		}
	}
}