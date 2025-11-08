// Tela piscando em vermelho claro
draw_set_alpha(alpha_tela);
draw_set_color(make_color_rgb(255, 100, 100));
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

// Texto centralizado
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(display_get_width()/2, 80, "Resolva as Equações Rápido!");

// Mostra as contas
for (var i = 0; i < array_length(contas); i++) {
    var y_pos = 160 + i * 60;
    if (i == conta_atual)
        draw_text(display_get_width()/2, y_pos, contas[i] + " → x = " + resposta_digitada + "|");
    else
        draw_text(display_get_width()/2, y_pos, contas[i] + " → x = ?");
}

draw_text(display_get_width()/2, display_get_height() - 60, 
"Tempo: " + string(ceil(tempo_ataque / room_speed)) + "s");
