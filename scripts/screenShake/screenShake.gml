///@description Shake the screen an amount

///@arg amount The intensity of the shake
var amount = argument0;

///@arg duration(s) How long to shake
var duration = argument1;

var shaker = instance_create_layer(x, y, layer, oScreenShake);
shaker.shakeAmount = amount;
shaker.alarm[0] = duration * 60;