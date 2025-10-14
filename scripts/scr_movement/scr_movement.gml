// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement(){
	
	// movement - right, left, up
	
	left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	up = keyboard_check(vk_space);
	sprint = keyboard_check(vk_shift);
	//down = (keyboard_check(ord("S")));
	//while(sprint){
	//	player_spd = 7;
	//}
	if(left){
		hspd = -player_spd;
		image_speed = 1;
		sprite_index = spr_player_walk_left;
		image_xscale = 1;
	}
	else if(right){
		hspd = player_spd;	
		image_speed = 1;
		sprite_index = spr_player_walk_right;
		image_xscale = 1;
	}
	else{
	hspd = 0;
	image_speed = 1;
	sprite_index = spr_player_idle;
	image_xscale = 1;
	}
	
	if(keyboard_check(vk_shift)){
		if(left){
		player_spd = 7;
		image_speed = 3;
		sprite_index = spr_player_walk_left;
		image_xscale = 1;
		}
		else{
		player_spd = 7;
		image_speed = 3;
		sprite_index = spr_player_walk_right;
		image_xscale = 1;
		}
	}
	if !keyboard_check(vk_shift){
		player_spd = 3;
	}
	//gravity
	if(!place_meeting(x, y+1, obj_wall)){
		vspd += grav;
	}
	//jumping
	else if(up){
			vspd = -player_jump;
			
			//stretch the player when jump
			
			x_scale = image_xscale * 0.5;
			y_scale = image_yscale * 2.7;
		}
	
	
	
	
	
	//check for landing to squash player
	
	if(place_meeting(x,y+1, obj_wall) && !place_meeting(x,yprevious+1, obj_wall)){
		x_scale = image_xscale * 2.7;
		y_scale = image_yscale * 0.5;
	}
	//return to the original shape after landing
		x_scale = lerp(x_scale, image_xscale, 0.2);
		y_scale = lerp(y_scale, image_yscale, 0.2);
	
}
