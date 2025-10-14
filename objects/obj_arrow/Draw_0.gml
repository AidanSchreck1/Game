/// @description Insert description here
// You can write your code in this editor



draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_menus);


margin = 60;

for(var i = 0; i < array_length(menu); i++){
	
	draw_set_color(c_white);
	
	
	if(i == index){	
		draw_set_color(c_fuchsia);
	}
	
	
	draw_text(x+margin, y+(margin * i), menu[i]);
}

draw_sprite_ext(spr_arrow, 0, x+10, y+(index * margin), 1, 1, 0, c_lime, 1);


