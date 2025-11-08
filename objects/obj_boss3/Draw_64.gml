switch (estado) {
    // --- ENTRADA DO BOSS ---
    case "subindo":
        y -= vel_subida;

        // Tremor leve ao subir
        if (screen_shake > 0) {
            x += random_range(-2, 2);
            y += random_range(-1, 1);
            screen_shake--;
        }

        if (y <= y_final) {
            estado = "atacando";
            ataque_timer = room_speed * irandom_range(3, 5);
        }
        break;


    // --- ATAQUE E PISCAR ---
    case "atacando":
        // Pisca constantemente (efeito de energia)
        if (irandom(6) == 0) {
            piscando = !piscando;
            image_blend = piscando ? c_yellow : c_white;
        }

        // Controla ataques
        if (!ataque_em_andamento) {
            ataque_timer--;

            if (ataque_timer <= 0) {
                ataque_em_andamento = true;

                // Escolhe ataque aleatório
                var tipo_ataque = irandom_range(1, 2);

                if (tipo_ataque == 1 && !instance_exists(obj_ataque_boss3_eq)) {
                    instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_ataque_boss3_eq);
                } 
                else if (tipo_ataque == 2 && !instance_exists(obj_ataque_boss3_reflexo)) {
                    instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_ataque_boss3_reflexo);
                }

                ataque_timer = room_speed * irandom_range(2, 4);
                ataque_em_andamento = false;
            }
        }

        // Verifica se morreu
        if (vida <= 0) {
            estado = "morrendo";
            fade_alpha = 0;
            screen_shake = 40;
        }
        break;


    // --- MORRENDO (CINEMÁTICO) ---
    case "morrendo":
        // Tremor e piscando rápido
        if (screen_shake > 0) {
            x += random_range(-5, 5);
            y += random_range(-3, 3);
            screen_shake--;
        }

        piscando = !piscando;
        image_blend = piscando ? c_red : c_white;

        // Escurece a tela
        fade_alpha += 0.02;

        if (fade_alpha >= 1) {
            room_goto(rm_menu); // volta para o menu
        }
        break;
}
