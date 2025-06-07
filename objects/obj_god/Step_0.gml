if Win and mouse_check_button(mb_left){
	
	Win = false
	with obj_card_basic{
		instance_destroy()
	}
	
	layer_set_visible("Victory",false)
	
	Next_Battle()
	
}