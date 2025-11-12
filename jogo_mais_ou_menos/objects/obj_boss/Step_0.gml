switch (estado) {
    // ──────────────── ESTADO: ATAQUE ────────────────
    case "ataque":
        sprite_index = sprite_normal;
        image_blend = c_white;
        image_alpha = 1;

        if (ataque_timer > 0) {
            ataque_timer--;
        } else {
            // escolhe ataque aleatório
            var tipo = choose(1, 2);

            if (tipo == 1 && !instance_exists(obj_ataque_boss)) {
                // ataque 1 — tela avermelhando
                instance_create_layer(x, y, "Instances_1", obj_ataque_boss);
            }
            else if (tipo == 2 && !instance_exists(obj_ataque_boss2)) {
                // ataque 2 — contas de defesa
                instance_create_layer(x, y, "Instances_1", obj_ataque_boss2);
            }

            // depois de atacar, ele fica indefeso
            estado = "indefeso";
            indefeso_tempo = room_speed * 5;
            ataque_timer = room_speed * irandom_range(5, 8);
        }
        break;

    // ──────────────── ESTADO: INDEFESO ────────────────
    case "indefeso":
        brilho_alpha += brilho_velocidade;
        if (brilho_alpha > 1 || brilho_alpha < 0) brilho_velocidade *= -1;

        // piscar em branco (efeito vulnerável)
        image_blend = make_color_rgb(255, 255 - (brilho_alpha * 80), 255 - (brilho_alpha * 80));
        image_alpha = 0.8 + 0.2 * sin(current_time / 200);

        indefeso_tempo--;
        if (indefeso_tempo <= 0) {
            estado = "ataque";
            image_blend = c_white;
            image_alpha = 1;
        }
        break;
}

// Derrota do boss
if (vida <= 0) {
    show_debug_message("💀 Boss derrotado!");
    instance_destroy();
}
