/// @description Insert description here
// You can write your code in this editor
draw_text(16,16,"Gas: " + string(gas));
draw_text(16,32,"Bullets: " + string(bullets));
draw_text(16,48,"Food: " + string(food));
draw_text(16,64,"Water: " + string(water));
draw_set_halign(fa_right);

draw_text(window_get_width() - 16,16,"Papa Hunger: " + string(papaHunger));
draw_text(window_get_width() - 16,32,"Papa Thirst: " + string(papaThirst));
draw_text(window_get_width() - 16,48,"Papa Health: " + string(papaHealth));
draw_text(window_get_width() - 16,64,"Papa Energy: " + string(papaEnergy));

draw_text(window_get_width() - 16,96,"Son Hunger: " + string(sonHunger));
draw_text(window_get_width() - 16,96+16,"Son Thirst: " + string(sonThirst));
draw_text(window_get_width() - 16,96+32,"Son Health: " + string(sonHealth));
draw_text(window_get_width() - 16,96+48,"Son Energy: " + string(sonEnergy));
draw_set_halign(fa_left);