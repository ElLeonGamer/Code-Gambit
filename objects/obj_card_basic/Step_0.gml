
if active{
	if position_meeting(mouse_x,mouse_y,self){
			if image_xscale != max_size{
			audio_play_sound(snd_card_flip,1,0)
			}
			
		image_xscale = max_size
		image_yscale = max_size
		

	
		if mouse_check_button_pressed(mb_left) and obj_god.OnBattle = false{
	
			PlaceCard()
			depth = -10
			audio_play_sound(snd_card_place,1,0)
	
		}

	}else{

		image_xscale = min_size
		image_yscale = min_size
	
	}
}