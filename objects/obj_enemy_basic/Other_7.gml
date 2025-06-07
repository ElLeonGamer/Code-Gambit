if sprite_index != sprite_dead{
sprite_index = sprite_iddle
}else{
image_speed = 0
image_index = image_number-1
audio_stop_sound(msc_background)
with obj_god{
	victory()
	alarm[0] = -1
	CleanSlots()
}


}