event_inherited()

damage = 1
texto = "Recover 1 HP"

function card_effect(){

if owner = obj_player{
	
heal(obj_player,1)
 obj_player.sprite_index = spr_shelly_buff
 var ind = instance_create_depth(obj_player.x,obj_player.y,-99,obj_indicator)
ind.value = 1
audio_play_sound(snd_buff,1,0)

 }else{
heal(obj_enemy_basic,1)
 obj_enemy_basic.sprite_index = obj_enemy_basic.sprite_buff
 var ind = instance_create_depth(obj_enemy_basic.x,obj_enemy_basic.y,-99,obj_indicator)
 audio_play_sound(snd_buff,1,0)
ind.value = 1
 
 }

	instance_destroy()
		with obj_god{	
		alarm[0] = 60
	}
	
	with CardSlot{
	card = noone	
	}
	

}