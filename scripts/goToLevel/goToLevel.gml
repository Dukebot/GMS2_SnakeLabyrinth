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
