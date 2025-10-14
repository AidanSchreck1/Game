/// @description draw health bar



if(!instance_exists(obj_player)){
	exit;
}



draw_set_color(c_blue);


draw_rectangle(x+2, y+2, x+125*(obj_player.player_health/obj_player.max_health), y+11, false);







