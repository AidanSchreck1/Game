/// @description Animation for the health pack


if(hoverUp){

	if(scale < 1){
		scale += 0.01;
	}
	else{
		hoverUp = !hoverUp;
	}
	
}
else{
	if(scale > 0.7){
		scale -= 0.01;
		
	}
	else{
		hoverUp = !hoverUp;
	}
}

image_xscale = scale;
image_yscale = scale;

image_angle += 1;



