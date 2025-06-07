function deal_damage(_target){
	
	var total_damage = damage;

	if (_target.Barrier > 0) {
	    if (_target.Barrier >= total_damage) {
	        _target.Barrier -= total_damage;
	        total_damage = 0; // Todo el daño fue absorbido
	    } else {
	        total_damage -= Barrier;
	        _target.Barrier = 0; // La barrera fue destruida, queda daño residual
	    }
	}

	_target.HP -= total_damage; // Aplica daño restante al HP
	if _target = obj_player{
		_target.sprite_index = spr_shelly_hurt
		audio_play_sound(snd_hurt,1,0)
	}

}