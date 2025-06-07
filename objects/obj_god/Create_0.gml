turn = 0

enemy_turns = 2
player_turns = 2
combat = 0
Win = false
OnBattle = false

CardSlot = [
	instance_create_depth(172,255,-10,obj_card_holder),
	instance_create_depth(247,255,-10,obj_card_holder),
	instance_create_depth(312,255,-10,obj_card_holder),
	instance_create_depth(380,255,-10,obj_card_holder)
]

enemies = [

	obj_enemy_drone,
	obj_enemy_drone_red,
	obj_enemy_robot,
	obj_enemy_robot_industrial

]


CardLoot  = [
	obj_card_twice_attack,
	obj_card_barrier,
	obj_healing_card
]


alarm[1] = 30
randomize();

function AssignTurns(){

	enemy_turns = 2
	player_turns = 2

		for (var i = 0; i < array_length(CardSlot); i += 1){
		
			if enemy_turns > 0 and player_turns > 0{
				
				if irandom_range(0,1) == 0{
				
					enemy_turns -= 1
					CardSlot[i].owner = obj_enemy_basic
				
				}else{
					
					player_turns -= 1
					CardSlot[i].owner = obj_player
					
				}
				
			}else if player_turns > 0{
				player_turns -= 1
				CardSlot[i].owner = obj_player	
			}else{
				enemy_turns -= 1
				CardSlot[i].owner = obj_enemy_basic
			}
		
		}

}
	
function PlaceEnemyCard() {
	
    for (var i = 0; i < array_length(CardSlot); i += 1) {
        // Check if the slot is owned by enemy
        if (CardSlot[i].owner == obj_enemy_basic) {
            // Pick a random card from enemy's card array
            var cardIndex = irandom_range(0, array_length(obj_enemy_basic.cards) - 1);
            
            // Create the card instance at the card slot's position, depth -2
           var CC =  instance_create_depth(
                CardSlot[i].x,
                CardSlot[i].y,
                -2,
                obj_enemy_basic.cards[cardIndex]
            );		
			CC.active = false
			CC.CardSlot = CardSlot[i]
			CardSlot[i].card = CC
        }
    }
}
	
function check_slots() {
    for (var i = 0; i < array_length(CardSlot); i += 1) {
        // If any slot is empty, exit early
        if (CardSlot[i].card == noone) {
            return;
        }
    }
    // If loop completes, all slots have cards
    instance_create_depth(188, 15, -99, obj_lets_dance);
    alarm[0] = 60;
	OnBattle = true
}

function CleanSlots(){

		for (var i = 0; i < array_length(CardSlot); i += 1){
		
				CardSlot[i].owner = noone
				CardSlot[i].card = noone
		}
		turn = 0
}
	


function shuffle_deck() {
	var cards = obj_player.cards;

	// Posiciones X donde aparecerán las cartas
	var positions = [172, 247, 312, 380];

	for (var i = 0; i < 4; i++) {
		var cardIndex = irandom_range(0, array_length(cards) - 1);
		var card = cards[cardIndex];
		var CC = instance_create_depth(positions[i],340, -10, card);
	}
}
	

function victory(){

	Win = true
	with obj_card_basic{
		instance_destroy()
	}
	var Lootindex =  irandom_range(0,array_length(CardLoot)-1)
	layer_set_visible("Victory",true)
	array_push(obj_player.cards,CardLoot[Lootindex]);
	var NC =instance_create_depth(478,119,-99,CardLoot[Lootindex],{	
	active : false
	})
	NC.active = false
}

function Next_Battle(){
if combat < array_length(enemies){
instance_create_depth(513,110,depth,enemies[combat])
combat++
alarm[1] = 30
}else{
	room = rm_game_victory
}
}

Next_Battle()