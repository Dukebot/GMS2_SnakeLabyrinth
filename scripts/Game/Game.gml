function initGame() {
	show_debug_message("\n\n\nInitializating game...");

	ini_open("GameSettings.ini");

	global.LEVEL = ini_read_real("game", "lastPlayedLevel", 1);

	ini_close();

	//Game Sprite as Font
	global.fnt_stone = font_add_sprite_ext(spr_stone, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-&/+%$"+"\""+" ", true, 0);
	global.fnt_stone2 = font_add_sprite_ext(spr_stone2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+ ", true, 0);
	global.fnt_stone3 = font_add_sprite_ext(spr_stone3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+ ", true, 0);
	global.fnt_stone4 = font_add_sprite_ext(spr_stone4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+ ", true, 0);
	global.fnt_stoneSmall = font_add_sprite_ext(spr_stoneSmall, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-&/+%$"+"\""+" ", true, 0);

	global.PAUSE = false;

	global.backgroundMusic = true;

	global.buttonSprite = sButton2;
}


///@param i
function createInTable() {
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


}


function createInTableMovables(argument0, argument1) {
	
	///@param i
	var i = argument0;
	///@param j
	var j = argument1;

	//En la versión antigua de game maker esto funcionaba
	//var lengthX = array_height_2d(table);
	//var lengthY = array_length_1d(table);
	
	//Nueva versión de GAME MAKER
	var lengthX = array_length_1d(table);
	var lengthY = array_length_2d(table, 0);

	var iNext, jNext;


	//Casilla de la derecha
	iNext = i + 1;
	jNext = j;

	if (iNext >= 0 and iNext < lengthX
	and jNext >= 0 and jNext < lengthY) {
		if (table[iNext, jNext] == 0) {
			var objCreated = createInTable(iNext, jNext, oElement, sMovablePosition);
			objCreated.direction = 0;
		}
	}


	//Casilla de la izquierda
	iNext = i - 1;
	jNext = j;

	if (iNext >= 0 and iNext < lengthX
	and jNext >= 0 and jNext < lengthY) {
		if (table[iNext, jNext] == 0) {
			var objCreated = createInTable(iNext, jNext, oElement, sMovablePosition);
			objCreated.direction = 180;
		}
	}


	//Casilla de abajo
	iNext = i;
	jNext = j + 1;

	if (iNext >= 0 and iNext < lengthX
	and jNext >= 0 and jNext < lengthY) {
		if (table[iNext, jNext] == 0) {
			var objCreated = createInTable(iNext, jNext, oElement, sMovablePosition);
			objCreated.direction = 270;
		}
	}


	//Casilla de arriba
	iNext = i;
	jNext = j - 1;

	if (iNext >= 0 and iNext < lengthX
	and jNext >= 0 and jNext < lengthY) {
		if (table[iNext, jNext] == 0) {
			var objCreated = createInTable(iNext, jNext, oElement, sMovablePosition);
			objCreated.direction = 90;
		}
	}
}


///@param i
function destroyInTable(argument0, argument1) {
	var i = argument0;
	///@param j
	var j = argument1;

	instance_destroy(table[i, j]);
	table[i, j] = 0;


}


///@param sprite
function destroyInTableAll() {
	var sprite = 0;
	if (argument_count > 0) sprite = argument[0];

	//Versión antigua
	//var lengthX = array_height_2d(table);
	//var lengthY = array_length_1d(table);
	
	//Nueva versión
	var lengthX = array_length_1d(table);
	var lengthY = array_length_2d(table, 0);

	for (var i = 0; i < lengthX; i++) {
		for (var j = 0; j < lengthY; j++) {
			if (table[i, j] != 0) {
				if (sprite == 0 or table[i, j].sprite_index == sprite) {
					instance_destroy(table[i, j]);
					table[i, j] = 0;
				}
			}
		}
	}
}



function fillWithCoins() {
	//Versión antigua de GM
	//var lengthX = array_height_2d(table);
	//var lengthY = array_length_1d(table);
	
	//Nueva versión
	var lengthX = array_length_1d(table);
	var lengthY = array_length_2d(table, 0);

	for (var i = 0; i < lengthX; i++) {
		for (var j = 0; j < lengthY; j++) {
			var posX = size/2 + size*i;
			var posY = size/2 + size*j;
		
			if (table[i, j] = 0 or table[i, j].sprite_index == sMovablePosition) {
				//table[i, j] = instanceCreate(oCoin, posX, posY);
				instanceCreate(oCoin, posX, posY);
			}
		}
	}


}


function getSeed() {
	var seed = global.LEVEL;

	//Seed Modifiers
	//if (seed == 4) seed = 1000;
	//if (seed == 5) seed = 1001;

	return seed;


}


function goToLevel() {
	if (global.LEVEL == 1) room_goto(rLevel1);
	if (global.LEVEL == 2) room_goto(rLevel2);
	if (global.LEVEL == 3) room_goto(rLevel3);
	if (global.LEVEL == 4) room_goto(rLevel4);
	if (global.LEVEL == 5) room_goto(rLevel5);
	if (global.LEVEL == 6) room_goto(rLevel6);
	if (global.LEVEL == 7) room_goto(rLevel7);
	if (global.LEVEL == 8) room_goto(rLevel8);
	if (global.LEVEL == 9) room_goto(rLevel9);
	if (global.LEVEL == 10) room_goto(rLevel10);
	if (global.LEVEL == 11) room_goto(rLevel11);
	if (global.LEVEL == 12) room_goto(rLevel12);
	if (global.LEVEL == 13) room_goto(rLevel13);
	if (global.LEVEL == 14) room_goto(rLevel14);
	if (global.LEVEL == 15) room_goto(rLevel15);
	if (global.LEVEL == 16) room_goto(rLevel16);
	if (global.LEVEL == 17) room_goto(rLevel17);
	if (global.LEVEL == 18) room_goto(rLevel18);
	if (global.LEVEL == 19) room_goto(rLevel19);
	if (global.LEVEL == 20) room_goto(rLevel20);
	
	if (global.LEVEL < 1 or global.LEVEL > 20) room_goto(rCommingSoon);
}


function initTable() {
	table = 0;

	var lengthX = room_width div size;
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
}



function isGameLost() {
	//Check for game lost
	
	//Old version
	//var lengthX = array_height_2d(table);
	//var lengthY = array_length_1d(table);
	
	//New version
	var lengthX = array_length_1d(table);
	var lengthY = array_length_2d(table, 0);
	
	var lose = true;
		
	for (var i = 0; i < lengthX; i++) {
		for (var j = 0; j < lengthY; j++) {
			if (table[i, j] != 0 
			and table[i, j].sprite_index == sMovablePosition) {
				lose = false;
				break;
			}
		}
	}

	return lose;
}



function isGameWin() {
	//Check for game win
	
	//Old version
	//var lengthX = array_height_2d(table);
	//var lengthY = array_length_1d(table);
	
	//New version
	var lengthX = array_length_1d(table);
	var lengthY = array_length_2d(table, 0);
	
	
	var win = true;
		
	for (var i = 0; i < lengthX; i++) {
		for (var j = 0; j < lengthY; j++) {
			if (table[i, j] == 0 or table[i, j].sprite_index == sMovablePosition) {
				win = false;	
			}
		}
	}

	return win;
}



///@description Controlar que los índices I e J no se salgan de los límites de la tabla
function isValidIndexTable(argument0, argument1) {

	///@param i
	var i = argument0;

	///@param j
	var j = argument1;

	///@return
	var validIndex = false;

	var lengthX = array_height_2d(table);
	var lengthY = array_length_1d(table);

	if (i >= 0 and i < lengthX and j >= 0 and j < lengthY) {
		validIndex = true;
	}

	return validIndex;


}



///@param increment
function levelAdd(argument0) {
	var increment = argument0;

	global.LEVEL += increment;

	if (global.LEVEL > 20) {
		global.LEVEL = 20;	
	}

	if (global.LEVEL < 1) {
		global.LEVEL = 1;	
	}


}