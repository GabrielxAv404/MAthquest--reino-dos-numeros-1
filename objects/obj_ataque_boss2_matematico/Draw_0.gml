// Fundo vermelho transparente
draw_set_color(c_red);
draw_set_alpha(0.3);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Texto centralizado
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Título
draw_text(room_width / 2, room_height / 2 - 100, "Resolva as contas!");

// Exibe as 3 contas no centro da tela
for (var i = 0; i < 3; i++) {
    var y_pos = room_height / 2 - 40 + (i * 60);
    if (i == conta_atual)
        draw_text(room_width / 2, y_pos, string(contas[i]) + " = " + resposta_digitada);
    else
        draw_text(room_width / 2, y_pos, string(contas[i]) + " = ?");
}

// Mostra o tempo restante
draw_set_color(c_yellow);
draw_text(room_width / 2, room_height - 100, "Tempo: " + string(ceil(tempo_ataque / room_speed)) + "s");
