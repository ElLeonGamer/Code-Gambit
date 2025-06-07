/// @description ShuffleCards and turns



		with obj_card_basic{
		instance_destroy()	
		}
	
	AssignTurns()
	PlaceEnemyCard()
	instance_create_depth(188,15,-99,obj_round_starts)
	
	shuffle_deck()
	
		OnBattle = false