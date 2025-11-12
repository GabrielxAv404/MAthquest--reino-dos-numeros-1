if (spawn_ativo && fase == 2) {
    // Escolhe aleatoriamente entre os 3 inimigos
    var tipo_inimigo = choose(obj_inimigo, obj_inimigo2, obj_inimigo3);

    // Cria inimigo em posição aleatória
    instance_create_layer(irandom(room_width - 64), 0, "Instances_1", tipo_inimigo);
    enemy_count++;

    // Continua spawnando até atingir 30 inimigos
    if (enemy_count < 30) {
        alarm[2] = room_speed * irandom_range(2, 4);
    } else {
        // Finaliza a segunda horda
        spawn_ativo = false;
        show_debug_message("Segunda horda concluída!");

        // Cria o segundo boss (somente uma vez)
        if (!boss2_spawned && !instance_exists(obj_boss2)) {
            boss2_spawned = true;
            var boss = instance_create_layer(room_width / 2, room_height + 200, "Instances_1", obj_boss2);
            show_debug_message("Boss 2 surgindo!");
        }
    }
}
