// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function menuNav(){
	
	var up = keyboard_check_pressed(vk_up);
	var down = keyboard_check_pressed(vk_down);
	var select = keyboard_check_pressed(vk_enter);
	//var back = keyboard_check_pressed(vk_escape);
	
	if(down){
		index += 1;
		
		if(index >= array_length(obj_arrow.menu)){
			index = 0;
		}
	}
	else if(up){
		index -= 1;
		if(index < 0){
			index = array_length(obj_arrow.menu) -1;
		}
	}

	if(select){
	
		menuGoto();
	}
	//if(back){
	
	//}
}