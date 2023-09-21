// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_player_movement(){
	
	var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var spd = 2;
	
	// Espacio libre?
	if (place_free(x + hor * spd,y)){
		x += hor * spd;
	}
	
	//Movimiento Horizontal
	if (hor != 0 ){
		image_xscale = hor;
		sprite_index = spr_player_walk;
		}
	else{
		sprite_index = spr_player_idle;
		}
		
	//Salto
	if (keyboard_check(vk_space) && collision_rectangle(x-4, y, x+4, y + 2, obj_col, false, false) ){
		vspeed -= 5;
		}
}