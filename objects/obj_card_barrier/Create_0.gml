event_inherited()

damage = 1
texto = "Gives you 1 Barrier\nBarrier protects your HP"

function card_effect(){

if owner = obj_player{
	
 obj_player.Barrier += 1
 obj_player.sprite_index = spr_shelly_buff
 var ind = instance_create_depth(obj_player.x,obj_player.y,-99,obj_indicator)
ind.value = 1
audio_play_sound(snd_buff,1,0)

 }else{
 obj_enemy_basic.Barrier += 1
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