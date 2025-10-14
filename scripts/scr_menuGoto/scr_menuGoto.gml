// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function menuGoto(){
	switch(index){
		case 0:
			//level 1
			room_goto(Level1);
			break;
		case 1:
			//Level 2
			room_goto(Level2);
			break;
		case 2:
			//Level 3
			room_goto(Level3);
			break;
		case 3:
			//Controls
			room_goto(Controls);
			break;
		case 4:
			//Quit
			game_end();
			break;
	}
}