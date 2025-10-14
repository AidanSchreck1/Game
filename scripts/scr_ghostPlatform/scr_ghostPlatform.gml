// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ghostPlatform(){
	if(instance_exists(obj_player)){
		
		if(round(obj_player.y+(obj_player.sprite_height/2)) > y+64){
			
			mask_index = -1;
		}
		else{
			mask_index = spr_platform;
		}
	}
}