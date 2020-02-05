///@param i
var i = argument[0];

///@param j
var j = argument[1];

///@param object
var object = argument[2];

///@param sprite
var sprite = 0;
if (argument_count > 3) sprite = argument[3];

var posX = size/2 + size*i;
var posY = size/2 + size*j;

table[i, j] = instanceCreate(object, posX, posY);

if (sprite != 0) table[i, j].sprite_index = sprite;

return table[i, j];