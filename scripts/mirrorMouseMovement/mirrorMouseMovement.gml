///@description mirror's mouse movement (or finger in mobile phone or tablet)
function mirrorMouseMovement() {
	var previousSpeed = speedX;
	if (previousSpeed != 0) stopFrames = 0;
	if (previousSpeed == 0) movingFrames = 0;

	if mouse_check_button(mb_left) {
	
		if mouse_x != mouseXBefore and mouseXBefore != 0 {
			var differenceX = (mouse_x - mouseXBefore)*global.playerSensitivity;
			x += differenceX;
			speedX = differenceX;
			movingFrames++;
		} else {
			speedX = 0;
			stopFrames++; 
		}
	
		if mouse_y != mouseYBefore and mouseYBefore != 0 {
			var differenceY = (mouse_y - mouseYBefore)*global.playerSensitivity;
			y += differenceY;
		}
	
		mouseXBefore = mouse_x;
		mouseYBefore = mouse_y;
	}
	else {
		speedX = 0;
		stopFrames++; 
		mouseXBefore = 0;
		mouseYBefore = 0;
	}


}
