/// @description draw the health and damage 


if(instance_exists(obj_enemy)){
	draw_text(20, 100, "Enemy Damage"+string(obj_enemy.life));
	draw_set_color(c_white);
	
}

//draw the coin

draw_text(30, 120, "Money: $"+string(global.coin));
draw_set_color(c_white);


//draw the collected item

//draw_self();
var margin = 10;

for(var i = 0; i < ds_list_size(global.inventory); i++){
	var item_id = global.inventory[| i];
	
	var xoffset = sprite_get_xoffset(sprite_index);
	var yoffset = sprite_get_yoffset(sprite_index);
	var spr_w = sprite_get_width(sprite_index) + margin;

	var draw_x = margin + (xoffset + (i * spr_w));
	var draw_y = (margin * 2)+ yoffset;
	
	draw_sprite(asset_get_index(item_id), 0, draw_x, draw_y);
	
	//draw which item is selected
	
	if(selected_item == i){
		draw_sprite(spr_selected_item, 0, draw_x, draw_y);
	
	}
		
		
}





selected_item = 0;









