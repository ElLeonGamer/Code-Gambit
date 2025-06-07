///@description Turn System

if turn <  array_length(CardSlot){


	if CardSlot[turn].card != noone{
	CardSlot[turn].card. card_effect()
	}
	turn += 1
	
}else{

	turn = 0
	alarm[1] = 60
	CleanSlots()
	
}