// Efeito de fundo vermelho translúcido
draw_set_alpha(0.3);
draw_set_color(c_red);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

// Título principal
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(display_get_width() / 2, 100, "DEFENDA-SE! Resolva as contas:");

// Exibe as contas no centro da tela
for (var i = 0; i < array_length(contas); i++) {
    var y_pos = display_get_height() / 2 - 60 + (i * 50);

    if (i == conta_atual) {
        draw_text(display_get_width() / 2, y_pos, string(contas[i]) + " = " + resposta_digitada + "|");
    } else {
        draw_text(display_get_width() / 2, y_pos, string(contas[i]) + " = ?");
    }
}

// Tempo restante
draw_text(display_get_width() / 2, display_get_height() - 80,
    "Tempo: " + string(ceil(tempo_ataque / room_speed)) + "s");
