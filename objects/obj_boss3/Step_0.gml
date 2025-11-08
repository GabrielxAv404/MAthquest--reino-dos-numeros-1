/// STEP EVENT — OBJ_BOSS3

// 🛡️ Segurança: evita erros se algo não tiver sido inicializado
if (!variable_instance_exists(id, "ataque_em_andamento")) ataque_em_andamento = false;
if (!variable_instance_exists(id, "ataque_timer")) ataque_timer = room_speed * irandom_range(3, 5);
if (!variable_instance_exists(id, "estado")) estado = "subindo";
if (!variable_instance_exists(id, "vida")) vida = 15;
if (!variable_instance_exists(id, "vibrar_forca")) vibrar_forca = 0.05;

// ⚰️ Se morrer
if (vida <= 0) {
    estado = "morrendo";
    image_alpha -= 0.02;

    if (image_alpha <= 0) {
        show_debug_message("Boss 3 derrotado!");
        // Fade-out e volta ao menu
        instance_create_layer(0, 0, "Instances_1", obj_fade_final);
        instance_destroy();
    }
    exit;
}

// 💥 Efeito de vibração
image_xscale = 1 + vibrar_forca * sin(current_time / 70);
image_yscale = 1 + vibrar_forca * cos(current_time / 90);

// 🧭 Controle de estados
switch (estado) {

    // --- ENTRANDO NA TELA ---
    case "subindo":
        y -= vel_subida;
        if (y <= y_final) {
            y = y_final;
            estado = "atacando";
            ataque_timer = room_speed * irandom_range(4, 6);
        }
        break;

    // --- ATACANDO ---
    case "atacando":
        if (!ataque_em_andamento) {
            ataque_timer--;

            if (ataque_timer <= 0) {
                var tipo_ataque = choose(1, 2);

                switch (tipo_ataque) {
                    case 1:
                        if (!instance_exists(obj_ataque_boss3_eq)) {
                            instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_ataque_boss3_eq);
                            ataque_em_andamento = true;
                            ataque_timer = room_speed * irandom_range(5, 8);
                        }
                        break;

                    case 2:
                        if (!instance_exists(obj_ataque_boss3_reflexo)) {
                            instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_ataque_boss3_reflexo);
                            ataque_em_andamento = true;
                            ataque_timer = room_speed * irandom_range(5, 8);
                        }
                        break;
                }
            }
        }

        // Quando todos os ataques terminarem → reinicia ciclo
        if (!instance_exists(obj_ataque_boss3_eq) && !instance_exists(obj_ataque_boss3_reflexo)) {
            if (ataque_em_andamento) {
                ataque_em_andamento = false;
                ataque_timer = room_speed * irandom_range(4, 7);
            }
        }
        break;
}
