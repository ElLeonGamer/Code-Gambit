event_inherited()

if HP <=  0{

	vspeed = 10
	image_angle += 4
	if y > 491{		
		effect_create_above(ef_explosion,x,y,1,c_black)
		instance_destroy()	
	}
}