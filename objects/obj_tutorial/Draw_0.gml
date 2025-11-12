// === DRAW EVENT ===

// Fundo preto semi-transparente
draw_set_color(make_color_rgb(10, 10, 30));
draw_rectangle(0, 0, room_width, room_height, false);

// Texto centralizado
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(-1);
draw_text(room_width / 2, room_height / 2 - 50, mensagem);

// Etapa de digitação
if (etapa == 4) {
    draw_set_color(c_yellow);
    draw_text(room_width / 2, room_height / 2 + 50, "Digite sua resposta: " + texto_digitado + "|");
}

// Instrução final
if (etapa == 7) {
    draw_set_color(c_lime);
    draw_text(room_width / 2, room_height - 100, "Pressione ENTER para começar!");
}
