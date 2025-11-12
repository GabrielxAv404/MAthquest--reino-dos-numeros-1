// Não desenha o sprite — já está no fundo da sala

// Desenha as opções de texto
var y_base = room_height / 2 + 80;

for (var i = 0; i < array_length(opcoes); i++) {
    draw_set_halign(fa_center);
    draw_set_color(i == opcao_selecionada ? cor_selecionada : cor_normal);
    draw_text(room_width / 2, y_base + i * 40, opcoes[i]);
}
