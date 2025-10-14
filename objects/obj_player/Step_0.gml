/// @description Insert description here
// You can write your code in this editor


movement();

collision();



//damage to player
image_alpha = player_health/100;


if(player_health <= 0){
	
	instance_destroy();
	game_restart();
	
}

if(keyboard_check_pressed(ord("L"))){
	if(selected_item - 1)>= 0{
		selected_item -= 1
	}
	else{
		selected_item = ds_list_size(global.inventory) - 1
	}

}
if(keyboard_check_pressed(ord("R"))){
	if(selected_item + 1) < ds_list_size(global.inventory){
		selected_item += 1;
	}
	else{
		selected_item = 0;
	}
}


