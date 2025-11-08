/// Draw GUI - obj_ataque_boss

draw_set_alpha(alpha_tela);
draw_set_color(c_red);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(display_get_gui_width()/2, 100, "Resolva as contas rapidamente!");

for (var i = 0; i < array_length(contas); i++) {
    var y_pos = 180 + i * 60;
    if (i == conta_atual)
        draw_text(display_get_gui_width()/2, y_pos, string(contas[i]) + " = " + resposta_digitada + "|");
    else
        draw_text(display_get_gui_width()/2, y_pos, string(contas[i]) + " = ?");
}

draw_text(display_get_gui_width()/2, display_get_gui_height() - 80,
    "Tempo: " + string(ceil(tempo_ataque / room_speed)) + "s");
