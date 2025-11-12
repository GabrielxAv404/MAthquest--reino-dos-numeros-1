/// Draw Event — obj_conta_ataque

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// Título
draw_text(display_get_width() / 2, display_get_height() / 2 - 100, "Resolva para atacar o Boss!");

// Mostra a conta atual e o que o jogador digitou
draw_text(display_get_width() / 2, display_get_height() / 2, string(expressao) + " = " + resposta_digitada);
