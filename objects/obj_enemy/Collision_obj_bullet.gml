/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x,y, obj_bullet)){
	life -= 10;
}
if(life <= 0){
	instance_destroy();
	instance_create_layer(820,250, "Instances",obj_coin);
}

instance_destroy(other);


//life -= 5;

//instance_destroy(other)