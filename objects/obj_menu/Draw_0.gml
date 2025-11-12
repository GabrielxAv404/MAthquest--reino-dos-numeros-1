// === DRAW EVENT ===

// Desenha o título do jogo
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_aqua);
draw_set_font(-1); // usa a fonte padrão
draw_text_transformed(room_width / 2, room_height / 3, "MATHQUEST: O REINO DOS NUMEROS", 2, 2, 0);

// Desenha as opções
var y_base = room_height / 2 + 80;

for (var i = 0; i < array_length(opcoes); i++) {
    var tamanho = (i == opcao_selecionada) ? 36 : 32; // a opção selecionada é ligeiramente maior
    var cor = (i == opcao_selecionada) ? cor_selecionada : cor_normal;

    draw_set_color(cor);
    draw_text_transformed(room_width / 2, y_base + i * 60, opcoes[i], tamanho / 32, tamanho / 32, 0);
}
