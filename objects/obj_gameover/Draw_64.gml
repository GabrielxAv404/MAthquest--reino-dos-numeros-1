// Fundo escuro transparente
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

// Configuração de texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Centraliza o texto verticalmente
var centro_x = display_get_width() / 2;
var centro_y = display_get_height() / 2;

// Título "GAME OVER"
draw_set_color(c_red);
draw_text(centro_x, centro_y - 100, "GAME OVER");

// Desenha as opções centralizadas abaixo do título
for (var i = 0; i < array_length(opcoes); i++) {
    var y_pos = centro_y + i * espacamento;
    var cor = (i == opcao_selecionada) ? cor_selecionada : cor_normal;
    draw_set_color(cor);
    draw_text(centro_x, y_pos, opcoes[i]);
}
