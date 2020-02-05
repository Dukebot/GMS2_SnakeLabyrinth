draw_set_font(global.fnt_stone);
var str = "Sprite Fonts for GameMaker!";
var w = string_width(string_hash_to_newline(str));
draw_text_ext_transformed_colour(__view_get( e__VW.WView, 0 )/2 - (w*0.7)/2, 40, string_hash_to_newline(str), 100, 3000, 0.7, 0.7, 0, c_white, c_white, c_white, c_white, 1);

draw_set_font(global.fnt_stone2);
str = "Stone";
w = string_width(string_hash_to_newline(str));
draw_text_colour(__view_get( e__VW.WView, 0 )/2 - w/2, 120, string_hash_to_newline(str), c_white, c_white, c_white, c_white, 1);

draw_set_font(global.fnt_stoneSmall);
str = "Let your game have cool texts!";
w = string_width(string_hash_to_newline(str));
draw_text_ext_transformed_colour(__view_get( e__VW.WView, 0 )/2 - (w*1)/2, 240, string_hash_to_newline(str), 100, 3000, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

draw_set_font(global.fnt_stone4);
str = "Scale text!";
w = string_width(string_hash_to_newline(str));
draw_text_ext_transformed_colour(__view_get( e__VW.WView, 0 )/2 - (w*1)/2, 320, string_hash_to_newline(str), 100, 3000, 1, 0.7, 0, c_white, c_white, c_white, c_white, 1);

draw_set_font(global.fnt_stone2);
str = "Rotate text!";
w = string_width(string_hash_to_newline(str));
draw_text_ext_transformed_colour(__view_get( e__VW.WView, 0 )/2 - (w*0.7)/2, 400, string_hash_to_newline(str), 100, 3000, 0.7, 0.6, 5, c_white, c_white, c_white, c_white, 1);

draw_set_font(global.fnt_stone);
str = "Get it at the Market Place!";
w = string_width(string_hash_to_newline(str));
draw_text_ext_transformed_colour(__view_get( e__VW.WView, 0 )/2 - (w*0.6)/2, 460, string_hash_to_newline(str), 100, 3000, 0.6, 0.5, 0, c_white, c_white, c_white, c_white, 1);

draw_set_font(global.fnt_stone3);
str = "5 ready fonts!";
w = string_width(string_hash_to_newline(str));
draw_text_ext_transformed_colour(__view_get( e__VW.WView, 0 )/2 - (w*0.6)/2, 520, string_hash_to_newline(str), 100, 3000, 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1);

draw_set_font(global.fnt_stone4);
str = "62 sprite sheets you can play with!";
w = string_width(string_hash_to_newline(str));
draw_text_ext_transformed_colour(__view_get( e__VW.WView, 0 )/2 - (w*0.4)/2, 580, string_hash_to_newline(str), 100, 3000, 0.4, 0.6, 0, c_white, c_white, c_white, c_white, 1);


