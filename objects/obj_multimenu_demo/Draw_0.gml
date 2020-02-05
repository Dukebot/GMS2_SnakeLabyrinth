//Set the font
draw_set_font(fnt_button);


switch(menu_phase)
{
//First Menu Screen
case 1:
//Continue Button
if(draw_button_sprite(spr_button,0,1,x-(sprite_get_width(spr_button)/2),y,"Continue",c_white,false))
{
menu_phase = 2;
}
//Exit Button
if(draw_button_sprite(spr_button,0,1,x-(sprite_get_width(spr_button)/2),y+16+sprite_get_height(spr_button),"Exit",c_white,false))
{
game_end();
}

break;

//Second Menu Screen
case 2:

//Load Button
if(draw_button_sprite(spr_button,0,1,x-(sprite_get_width(spr_button)/2),y,"Next Room",c_white,false))
{
room_goto(rm_gui);
}
//Back Button
if(draw_button_sprite(spr_button,0,1,x-(sprite_get_width(spr_button)/2),y+16+sprite_get_height(spr_button),"Back",c_white,false))
{
menu_phase = 1;
}


break;
}

