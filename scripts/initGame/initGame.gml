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
