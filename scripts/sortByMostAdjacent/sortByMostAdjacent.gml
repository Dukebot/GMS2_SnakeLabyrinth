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
