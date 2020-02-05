///@param iIndex
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