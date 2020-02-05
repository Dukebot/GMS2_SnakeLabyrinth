table = 0;

var lengthX = room_width  div size;
var lengthY = (room_height-size) div size;

for (var i = 0; i < lengthX; i++) {
	for (var j = 0; j < lengthY; j++) {
		var posX = size/2 + size*i;
		var posY = size/2 + size*j;
		table[i, j] = 0;
		
		//In room play we have to fill all the table with obstacles first because we build map with algorithm.
		if (room == rPlay) {
			table[i, j] = instanceCreate(oObstacle, posX, posY);
		} 
		//Not room play means map made by hand so we fill the table accordingly to what's in the room.
		else {
			//Check if there is obstacle at table position and assign it to the table.
			var objToAssignToTable = 0;
			var obstacle = instanceCreate(oObstacle, posX, posY);
			with (obstacle) {
				if (place_meeting(x, y, oObstacle)) {
					objToAssignToTable = instance_place(x, y, oObstacle);
				}
				instance_destroy();
			}
			table[i, j] = objToAssignToTable;
		}
	}
}