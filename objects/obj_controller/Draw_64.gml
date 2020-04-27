/// @description Draw death message
//set gui dimensions
display_set_gui_size(1280, 720);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_default);
draw_set_color(c_white);

var midX = display_get_gui_width() / 2;
var midY = display_get_gui_height() /2;
var right = display_get_gui_width();
var bottom = display_get_gui_height();

//TEMPORARY win/lose conditions
if (room != rm_menu) { //do not draw on menu (menu draw handled in menuController)
	if (dead) {
		draw_text(midX, midY, "You have fallen...\n(Press R to restart)");
	}
	if (room_complete) {
		draw_text(midX, midY, "You have defeated the hoards!\n(To be continued...)");
	}

	if (instance_exists(obj_player)) {
		//potion inventory and timers
		draw_set_color(potionGUICircle);
		var potCenterX = right - 100; //center for pot gui X
	 	var potCenterY = bottom - 100; //center for pot gui Y
		var aboveActive = potCenterY - 70;
		var underActive = potCenterY + 50;
		var underSpread = 55;
		var textDistance = 25; //distance
		var mainCircleSize = 50; //active potion circle
		var subCircleSize = 35; //potion sub circle
	
		//background circles
		draw_circle(potCenterX, potCenterY, mainCircleSize, false); //center
		draw_circle(potCenterX, aboveActive, subCircleSize, false); //top-mid
		draw_circle(potCenterX - underSpread, underActive, subCircleSize, false); //bot-left
		draw_circle(potCenterX + underSpread, underActive, subCircleSize, false); //bot-right
		//active potion
		draw_sprite(spr_potionGUI, obj_player.activePotion, potCenterX, potCenterY);
		//potion type sprites
		draw_sprite(spr_potion, 0, potCenterX, aboveActive); //top-mid
		draw_sprite(spr_potion, 2, potCenterX - underSpread, underActive); //bot-left
		draw_sprite(spr_potion, 1, potCenterX + underSpread, underActive); //bot-right
		//potion numbers and hot keys
		draw_set_color(c_white);
		draw_text(potCenterX, aboveActive + textDistance, string(obj_player.hp_pot)); //health (top-mid)
		draw_text(potCenterX, aboveActive - textDistance, "Z")
		draw_text(potCenterX - underSpread, underActive + textDistance, string(obj_player.dm_pot)); //damage (bot-left)
		draw_text(potCenterX - underSpread, underActive - textDistance, "X");
		draw_text(potCenterX + underSpread, underActive + textDistance, string(obj_player.sp_pot)); //speed (bot-right)
		draw_text(potCenterX + underSpread, underActive - textDistance, "C");
		//active potion timer
		if (obj_player.potTimer > 9) {
			draw_text(potCenterX, potCenterY + 40, "00:" + string(obj_player.potTimer));
		}
		else {
			draw_text(potCenterX, potCenterY + 40, "00:0" + string(obj_player.potTimer));
		}
	}
}



