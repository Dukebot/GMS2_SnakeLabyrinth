///@param increment
var increment = argument0;

global.LEVEL += increment;

if (global.LEVEL > 20) {
	global.LEVEL = 20;	
}

if (global.LEVEL < 1) {
	global.LEVEL = 1;	
}