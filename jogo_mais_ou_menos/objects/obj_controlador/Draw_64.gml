// Efeito de Flash
if (screen_flash > 0) {
    draw_set_alpha(0.2);
    draw_rectangle_color(0,0,display_get_width(),display_get_height(),
    c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}

// Mensagem BOSS
if (mensagem_boss_tempo > 0) {
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(display_get_width()/2, display_get_height()/2, "!!! BOSS CHEGANDO !!!");
}
if (mensagem_boss_tempo > 0) {
    draw_set_halign(fa_center);
    draw_set_color(c_red);
    draw_set_font(-1); // usa fonte padrão
    draw_text(room_width / 2, room_height / 2 - 100, mensagem_boss_texto);
}
