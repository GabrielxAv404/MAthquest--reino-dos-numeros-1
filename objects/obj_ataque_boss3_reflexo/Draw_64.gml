// Efeito de piscada
draw_set_alpha(alpha_tela);
draw_set_color(make_color_rgb(255, 255, 255));
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(display_get_width()/2, display_get_height()/2 - 50, "Digite Rápido!");
draw_text(display_get_width()/2, display_get_height()/2, string(numero_atual));
draw_text(display_get_width()/2, display_get_height()/2 + 80, "→ " + resposta_digitada);
draw_text(display_get_width()/2, display_get_height() - 80, 
"Tempo: " + string(ceil(tempo_ataque / room_speed)) + "s");
