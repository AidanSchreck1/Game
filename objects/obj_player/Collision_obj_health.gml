/// @description Collision with health


if(player_health < 100){
	player_health += 25;
	
	if(player_health > 100){
		
		player_health = 100;
	
	}
	else{
		instance_destroy(other);
	}
}







