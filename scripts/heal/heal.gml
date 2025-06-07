function heal(_target,_heal){
	
	if _target.HP + _heal <= _target.MaxHP{
		_target.HP += _heal
	}else{
		_target.HP = _target.MaxHP
	}

}