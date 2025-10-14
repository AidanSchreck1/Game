/// @description fade




roomAlpha = clamp(roomAlpha + (roomFade * 0.1), 0, 1);


if(roomAlpha == 1){
	roomFade = -1;
}

if(roomAlpha == 0 && roomFade == -1){
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(roomAlpha);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], 0);
draw_set_alpha(1);


