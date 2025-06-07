draw_set_font(fnt_indicator)
if value > 0{

draw_set_color(c_black)
draw_text(x,y+1,"-"+string(value))
draw_set_color(c_green)
draw_text(x,y,"+"+string(value))

}else{
	
draw_set_color(c_black)
draw_text(x,y+1,"-"+string(value))
draw_set_color(c_red)
draw_text(x,y,"-"+string(value))

}
