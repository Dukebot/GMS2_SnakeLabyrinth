if (instance_exists(oMenuGameWin) or instance_exists(oMenuGameLost)) {
	instance_destroy();
}
global.PAUSE = true;