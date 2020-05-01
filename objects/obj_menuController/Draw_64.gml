/// @description Draw menu
display_set_gui_size(1280, 720);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(normalColor);
var center = display_get_gui_width() / 2;
draw_set_alpha(1);

//title font
draw_set_font(fnt_title);
//title
var menuY = 200;
draw_text(center, menuY, "The Nameless")

//calculate button placement
var y1 = menuY + 170;
var y2 = y1 + 75;
var y3 = y2 + 75;
var y4 = y3 + 75;
var left = 120;

//menu font
draw_set_font(fnt_menu);
draw_set_halign(fa_left);

//menu buttons
button1Color = normalColor;
if (selection == 1)
	button1Color = brightColor;
draw_text_color(left, y1, "Play",
							button1Color,
							button1Color,
							button1Color,
							button1Color,
							1); //alpha (opacity)

button2Color = normalColor;
if (selection == 2)
	button2Color = brightColor;
draw_text_color(left, y2, "Select Class",
							button2Color,
							button2Color,
							button2Color,
							button2Color,
							1); //alpha (opacity)

button3Color = normalColor;
if (selection == 3)
	button3Color = brightColor;
draw_text_color(left, y3, "Credits",
							button3Color,
							button3Color,
							button3Color,
							button3Color,
							1); //alpha (opacity)

button4Color = normalColor;
if (selection == 4)
	button4Color = brightColor;
draw_text_color(left, y4, "Exit",
							button4Color,
							button4Color,
							button4Color,
							button4Color,
							1); //alpha (opacity)
							
//class selection messages
draw_set_halign(fa_center);
draw_set_font(fnt_classSelect);
if (classSelection) {
	draw_text_color(420, 360, "Press Space to Change Classes",
								button2Color,
								button2Color,
								button2Color,
								button2Color,
								1); //alpha (opacity)
	switch (classIndex) {
		case 0: 
			draw_text_color(420, 340, "Warrior",
										button2Color,
										button2Color,
										button2Color,
										button2Color,
										1); break; //alpha (opacity)
		case 1: 
			draw_text_color(420, 340, "Mage",
										button2Color,
										button2Color,
										button2Color,
										button2Color,
										1); break; //alpha (opacity)
		case 2: 
			draw_text_color(420, 340, "Bard",
										button2Color,
										button2Color,
										button2Color,
										button2Color,
										1); break; //alpha (opacity)

	}
}

//menu navigation tips
draw_set_color(normalColor);
draw_set_halign(fa_left);
draw_set_font(fnt_menuTips);
draw_text(left, 680, "UP - W | DOWN - S | CONFIRM - E | WSAD - MOVE | LEFT MOUSE - ATTACK | RIGHT MOUSE - SPECIAL");