///@param chance
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