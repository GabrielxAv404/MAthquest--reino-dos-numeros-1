switch (estado) {
    case "subindo":
        // Boss sobe até posição de batalha
        y -= velocidade_subida;

        // Tremor de entrada
        if (tremor_tempo > 0) tremor_tempo--;

        // Quando ele chega na posição certa, ativa luta
        if (y <= room_height - 400) {
            y = room_height - 400;
            estado = "lutando";
            ataque_timer = room_speed * irandom_range(4, 7); // reseta o timer de ataque
            show_debug_message("Boss entrou na arena!");
        }
        break;

    case "lutando":
        // Só aqui o boss pode atacar
        if (ataque_timer > 0) {
            ataque_timer--;
        } else {
            var tipo = choose(1, 1, 1, 2); // 75% chance de ataque matemático

            if (tipo == 1 && !instance_exists(obj_ataque_boss2_matematico)) {
                instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_ataque_boss2_matematico);
            }
            else if (tipo == 2 && !instance_exists(obj_ataque_boss2_raio)) {
                instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_ataque_boss2_raio);
            }

            ataque_timer = room_speed * irandom_range(6, 9);
        }
        break;

    case "indefeso":
        image_alpha = 0.7 + 0.3 * sin(current_time / 100);
        break;

    case "derrotado":
        image_alpha -= 0.03;
        if (image_alpha <= 0) instance_destroy();
        break;
		case "aguardando":
    tempo_inicio--;
    if (tempo_inicio <= 0) {
        estado = "lutando";
        ataque_timer = room_speed * irandom_range(4, 7);
    }
    break;

}

// Derrota
if (vida <= 0 && estado != "derrotado") {
    estado = "derrotado";
    if (instance_exists(obj_controlador)) obj_controlador.boss2_derrotado = true;
}
