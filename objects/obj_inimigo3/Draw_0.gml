// Desenha o sprite do inimigo
draw_self();

// Mostra a conta acima dele
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_text(x, y - 32, conta);
