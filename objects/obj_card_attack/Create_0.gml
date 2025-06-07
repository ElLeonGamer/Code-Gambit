event_inherited()

damage = 1

function card_effect(){

if owner = obj_player{
	
deal_damage(obj_enemy_basic)
 obj_player.sprite_index = spr_shelly_attack
 var ind = instance_create_depth(obj_enemy_basic.x,obj_enemy_basic.y,-99,obj_indicator)
ind.value = damage*-1
audio_play_sound(snd_laser,1,0)
 
 }else{
deal_damage(obj_player)
 obj_enemy_basic.sprite_index = obj_enemy_basic.attack_sprite
var ind = instance_create_depth(obj_player.x,obj_player.y,-99,obj_indicator)
ind.value = damage*-1
audio_play_sound(obj_enemy_basic.attack_sound)

 }

	instance_destroy()
	with obj_god{	
		alarm[0] = 60
	}
	
	with CardSlot{
	card = noone	
	}
	

}
	
texto = "Deals 1 damage"