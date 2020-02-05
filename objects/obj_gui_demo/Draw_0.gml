draw_set_color(c_white);

draw_set_font(fnt_button);
//Next room
if(draw_button_sprite(spr_button, 0, 1, x-(sprite_get_width(spr_button)/2),y, "Start", c_white, false)) 
{
room_goto(rm_multimenu);
}
//Options
if(draw_button_sprite(spr_button, 0, 1, x-(sprite_get_width(spr_button)/2),y+((sprite_get_height(spr_button)*1.2)*1), "Options", c_white, false))
{
show_message("This doesn't do anything currently!");
}

//Exit
if(draw_button_sprite(spr_button, 0, 1, x-(sprite_get_width(spr_button)/2),y+((sprite_get_height(spr_button)*1.2)*2), "Exit", c_white, false))
{
show_message("See you later!");
game_end();
}


//check boxes
for(i = 0; i < 3; i ++)
{
if(draw_button_sprite(spr_checkbox, demo[i], demo[i], x-(sprite_get_width(spr_button)/2),y+288+((sprite_get_height(spr_button)*1.2)*i), "Just a demo.", c_white, true))
{
//resets all to nothing before putting check in desired box. Remove if you want multiple boxes checked.
for(h = 0; h < 3; h ++)
{
demo[h] = 0;
}
//Check or uncheck the box
demo[i] = !demo[i];
}
}
//slider
val = draw_slider_sprite(val, spr_button, spr_slider, x - (sprite_get_width(spr_button)/2), y+576);

