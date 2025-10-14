// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rain(){
	//create the particle type
	global.particle_rain = part_type_create();
	
	
	var ps = global.particle_rain;
	
	//set the rain/type
	
	part_type_sprite(ps, spr_rainP, 0, 0, 1);
	
	part_type_size(ps, 2, 2, 0, 0);
	
	part_type_gravity(ps, 0.05, 270);
	
	part_type_life(ps, 150, 200);
	
	part_type_orientation(ps, 0, 0, 0, 0, 0);
	
}