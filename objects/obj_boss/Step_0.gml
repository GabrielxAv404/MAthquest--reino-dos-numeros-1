/// Step Event - obj_boss

switch (estado) {
    case "esperando":
        ataque_timer--;
        if (ataque_timer <= 0) {
            ataque_tipo = choose(1, 2);
            estado = "atacando";
            show_debug_message("Boss iniciou ataque tipo " + string(ataque_tipo));
        }
    break;

    case "atacando":
        if (!ataque_em_andamento) {
            ataque_em_andamento = true;

            if (ataque_tipo == 1 && !instance_exists(obj_ataque_boss)) {
                instance_create_layer(x, y, "Instances_1", obj_ataque_boss);
            }
            else if (ataque_tipo == 2 && !instance_exists(obj_ataque_boss2)) {
                instance_create_layer(x, y, "Instances_1", obj_ataque_boss2);
            }
        }

        // Quando o ataque termina, volta a esperar
        if (!instance_exists(obj_ataque_boss) && !instance_exists(obj_ataque_boss2)) {
            ataque_em_andamento = false;
            estado = "esperando";
            ataque_timer = room_speed * irandom_range(5, 8);
        }
    break;
}
/// Step Event - obj_boss

// Se o boss morrer

if (vida <= 0) {
    show_debug_message("💀 Boss 1 derrotado!");
    if (instance_exists(obj_controlador)) {
        with (obj_controlador) {
            boss_derrotado = true;
            fase = 2;
            spawn_ativo = true;
            enemy_count = 0;
            alarm[2] = room_speed * 2; // inicia segunda horda após 2s
        }
    }
    instance_destroy();
    exit;
}

