draw_self(); // Dibuja el sprite del objeto

// Parámetros de la barra
var bar_x = 440;
var bar_y = 222;
var bar_width = 100;
var bar_height = 12;

// Calcular proporciones
var hp_ratio = clamp(HP / MaxHP, 0, 1);
var fill_width_hp = bar_width * hp_ratio;

var total_max = MaxHP + Barrier; // HP + Escudo para la proporción completa
var barrier_ratio = (Barrier > 0) ? clamp(Barrier / total_max, 0, 1) : 0;
var fill_width_barrier = bar_width * clamp((HP + Barrier) / MaxHP, 0, 1);

// --- Fondo gris ---
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// --- Vida verde ---
draw_set_color(c_lime);
draw_rectangle(bar_x, bar_y, bar_x + fill_width_hp, bar_y + bar_height, false);

// --- Borde negro ---
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);

// --- Texto numérico ---
draw_set_color(c_white);
draw_set_font(fnt_ui);
draw_text(bar_x + 2, bar_y, string(HP) + " / " + string(MaxHP));
draw_text(bar_x - 16, bar_y, "HP");

draw_text(bar_x + 2, bar_y+16,Barrier);
draw_sprite(spr_shield,0,bar_x-16,bar_y+16)

