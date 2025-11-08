// Desenha a caixa da resposta
draw_set_color(c_black);
draw_rectangle(0, room_height - 80, room_width, room_height, false);

// Se o controlador existir e a variável existir, mostrar texto
if (instance_exists(obj_controlador)) {
    var ctrl = instance_find(obj_controlador, 0);
    draw_set_color(c_white);
    draw_text(20, room_height - 70, string(ctrl.numero_digitado));
}
