global.fnt_stone = font_add_sprite_ext(spr_stone, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-&/+%$"+"\""+" ", true, 0);
global.fnt_stone2 = font_add_sprite_ext(spr_stone2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+ ", true, 0);
global.fnt_stone3 = font_add_sprite_ext(spr_stone3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+ ", true, 0);
global.fnt_stone4 = font_add_sprite_ext(spr_stone4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-+ ", true, 0);
global.fnt_stoneSmall = font_add_sprite_ext(spr_stoneSmall, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,;:?!-&/+%$"+"\""+" ", true, 0);

/*
The asset pack has a buch of included files (png images) that contains sprite fonts (most of them are color variations).

To use these included files you can do this:
1. Create new sprite. 
2. Press Edit Sprite. Press menu File | Import from strip
3. Select a sprite sheet image (e.g. 'Stone2_color11_sheet.png')
In window 'Loading a strip image' you must set 
 - Number of images
 - Images per row
 - Image widht and height
You will find these information in a txt file in included files (e.g. 'Stone2.txt')
In Window 'Sprite Editor' you must define the witdh of character ' ' (space)  
 - Find the first empty image (it is just after the last image showing a character)
 - Then edit the image (double click it)
 - Pick any color. Set Opacity to 1. Draw a line that is aobut half the width of the image.
 - See also 'Note about the space character.png' (in the included files)
Close opened windows
Here in 'Room creation code' you must add the font just using font_add_sprite_ext (see code above). 
The string of characters you will find in inclued files (e.g. 'Cartoon2.txt')

Now your new sprite font is ready for use! 
Enjoy!

*/