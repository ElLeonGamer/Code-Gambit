function card_effect(){


}


active = true
owner = noone
CardSlot = noone

function PlaceCard(){
	
    for (var i = 0; i < array_length(obj_god.CardSlot); i += 1) {
        if (obj_god.CardSlot[i].card == noone) {  // Comparar con noone
            obj_god.CardSlot[i].card = self;     // Asignar esta carta al slot
           CardSlot =  obj_god.CardSlot[i]
		   owner = obj_god.CardSlot[i].owner
            
            // Teletransportar la carta a la posición del slot
            self.x = obj_god.CardSlot[i].x;
            self.y = obj_god.CardSlot[i].y;
            
            active = false;  // Desactivar o marcar que la carta ya está puesta
			
			image_xscale = min_size
			image_yscale = min_size
			
			with obj_god{
			check_slots()
			}
            
            return; // Terminar la función luego de asignar y mover
			
        }
    }
	

	
}

min_size = 1
max_size = 1.25

	 texto = "Descripcion";
	 padding = 6;
	 


function draw_description(){
	
	 // Medidas del texto
	 w = string_width(texto);
	 h = string_height(texto);

	draw_set_font(fnt_ui); // Asegúrate de tener esta fuente definida

	// Dibujar fondo
	draw_set_color(c_black);
	draw_rectangle(x - padding, y - padding, x + w + padding, y + h + padding, false);

	// Dibujar texto
	draw_set_color(c_white);
	draw_text(x, y, texto);

}