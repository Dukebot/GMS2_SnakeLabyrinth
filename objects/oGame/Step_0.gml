//show_debug_message("Step event ogame");
if (global.PAUSE) exit;

//Leemos el input
time++;

var mouse = mouse_check_button(mb_left);

var left = false;
if (instance_exists(oPad)) left = oPad.left;
if (keyboard_check(vk_left) and time > inputReadDelay) {
	left = true;
	time = 0;
}

var right = false;
if (instance_exists(oPad)) right = oPad.right;
if (keyboard_check(vk_right) and time > inputReadDelay) {
	right = true;
	time = 0;
}

var up = false;
if (instance_exists(oPad)) up = oPad.up;
if (keyboard_check(vk_up) and time > inputReadDelay) {
	up = true;
	time = 0;
}

var down = false;
if (instance_exists(oPad)) down = oPad.down;
if (keyboard_check(vk_down) and time > inputReadDelay) {
	down = true;
	time = 0;
}

if (mouse or up or left or right or down) {

	//Por defecto cojemos la posición del mouse
	var i = (mouse_x div size);
	var j = (mouse_y div size);
		
	//El teclado y el pad substituyen al mouse si se utilizan
	if (left) {
		i = iCurrent - 1;
		j = jCurrent;
	} else if (right) {
		i = iCurrent + 1;		
		j = jCurrent;
	} else if (up) {
		i = iCurrent;
		j = jCurrent - 1;
	} else if (down) {
		i = iCurrent;
		j = jCurrent + 1;
	}
	
	//Controlar que los índices I e J no se salgan de los límites de la tabla
	var lengthX = array_height_2d(table);
	var lengthY = array_length_1d(table);
	if (i < 0 or i >= lengthX or j < 0 or j >= lengthY) {
		exit;
	}
	
	var obj = table[i, j];
	
	//Si nos dirigimos a una posición movable entonces nos movemos
	if (obj != 0 and obj.sprite_index == sMovablePosition) {
		
		//Ponemos la cabeza en la nueva posición
		obj.sprite_index = sSnakeHead;
		obj.image_angle = obj.direction;
		
		//La casilla anterior ya no es cabeza, será cuerpo o giro
		var previousObj = table[iCurrent, jCurrent];
		previousObj.sprite_index = sSnakeBody;
		if (obj.direction != previousObj.direction) {
			previousObj.sprite_index = sSnakeTurn;
			
			//Orientar el giro hacia el ángulo correspondiente
			if (previousObj.direction == 0 and obj.direction == 270) {
				previousObj.image_angle = 0;
			}
			if (previousObj.direction == 90 and obj.direction == 180) {
				previousObj.image_angle = 0;
			}
			if (previousObj.direction == 90 and obj.direction == 0) {
				previousObj.sprite_index = sSnakeTurnInner;
				previousObj.image_angle = 90;
			}
			if (previousObj.direction == 0 and obj.direction == 90) {
				previousObj.image_angle = 270;
			}
			if (previousObj.direction == 180 and obj.direction == 270) {
				previousObj.image_angle = 90;
			}
			if (previousObj.direction == 180 and obj.direction == 90) {
				previousObj.sprite_index = sSnakeTurnInner;
				previousObj.image_angle = 180;
			}
			if (previousObj.direction == 270 and obj.direction == 0) {
				previousObj.image_angle = 180;
			}
		}
		
		//Actualizar la posición actual con la posición de la cabeza
		iCurrent = i;
		jCurrent = j;
				
		//Creamos las nuevas posiciones movables
		destroyInTableAll(sMovablePosition);
		createInTableMovables(i, j);
		
		//Comprobamos si el juego se ha ganado o perdido		
		if (isGameWin() and not instance_exists(oMenuGameWin)) {
			instanceCreate(oMenuGameWin);	
		} else {
			if (isGameLost() and not instance_exists(oMenuGameLost)) {
				instanceCreate(oMenuGameLost);
			}
		}
	}
}