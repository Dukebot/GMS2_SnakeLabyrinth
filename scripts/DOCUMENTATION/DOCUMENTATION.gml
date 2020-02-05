/*
To make a button:
Use either draw_button_rectangle or draw_button_sprite.

These functions draw a button and detect whether or not its pressed.

Example:

if(draw_button_rectangle(0,0,20,20,false,c_grey,"Next Room",c_white))
{
room_goto_next();
}

If you want a total customization of hover action and what not, you can always 
make an invisible button to change a variable that controls how a visual element
is drawn.

Example:

draw_set_alpha(0);
if(draw_button_rectangle(0,0,20,20,false,c_grey,"Next Room",c_white))
{
room_goto_next();
}
draw_set_alpha(1);

hover = point_in_rectangle(mouse_x,mouse_y,0,0,20,20); //use point_in_sprite for use in button sprites
if(hover)
{
draw_sprite(spr_button_hover, image_index, x, y);
}else
{
draw_sprite(spr_button_normal, image_index, x, y);
}

To make a checkbox: 
Basically the same as making a regular button, except that you use the button to change a
variable that affects how the button is drawn. You also set the "radiobox" argument to true
in the function being used. See the GUI demo I constructed for further insight on how to use

To make a slider:
Use either draw_slider_sprite or draw_invisible_slider.
Set the the variable you want to change with the slider to the slider you want to draw.

Example:

volume = draw_invisible_slider(volume,0,0,200,20);
draw_rectangle(0,0,200*volume,20,false); // You should make somehting fancier, but you get the idea.

Try to be creative with this asset in creating cool GUIs. Please stay tuned for more of these!
*/








