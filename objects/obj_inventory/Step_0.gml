/// @description pick up the gun
if(place_meeting(x,y,obj_player)){
	show_debug_message("item picked up");
	
	ds_list_add(global.inventory, spr_items);
	
	instance_destroy();
}