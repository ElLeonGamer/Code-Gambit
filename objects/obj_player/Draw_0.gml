draw_self()

// Parameters
var bar_x = 20          // X position of the health bar (adjust as needed)
var bar_y = 222        // Y position of the health bar
var bar_width = 100;         // Full width of the health bar
var bar_height = 12;         // Height of the health bar

// Calculate how much of the bar to fill
var hp_ratio = clamp(HP / MaxHP, 0, 1);
var fill_width = bar_width * hp_ratio;

// Draw background (gray)
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// Draw filled HP (green)
draw_set_color(c_lime);
draw_rectangle(bar_x, bar_y, bar_x + fill_width, bar_y + bar_height, false);

// Draw border (black)
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, true);

// Draw the numeric HP text (white)
draw_set_color(c_white);
draw_set_font(fnt_ui)
draw_text(bar_x+2,bar_y, string(HP) + " / " + string(MaxHP));
draw_text(bar_x-16,bar_y,"HP");

draw_text(bar_x + 2, bar_y+16,Barrier);
draw_sprite(spr_shield,0,bar_x-16,bar_y+16)

