/// Alarm[4] — Terceira Horda (inimigos 1, 2, 3 e 4)

// só ativa se o spawn estiver permitido e estivermos na fase 3
if (spawn_ativo && fase == 3) {

    // Limite de inimigos simultâneos
    var inimigos_na_tela =
        instance_number(obj_inimigo) +
        instance_number(obj_inimigo2) +
        instance_number(obj_inimigo3) +
        instance_number(obj_inimigo4);

    if (inimigos_na_tela < limite_inimigos_na_tela) {

        // Chance controlada pra cada tipo
        var tipo_inimigo = choose(
            obj_inimigo, obj_inimigo, // inimigo 1 mais comum
            obj_inimigo2, obj_inimigo2, // inimigo 2 um pouco comum
            obj_inimigo3,               // menos comum
            obj_inimigo4                // mais raro
        );

        // Cria o inimigo no topo da tela
        instance_create_layer(irandom(room_width - 64), 0, "Instances_1", tipo_inimigo);
        enemy_count++;
    }

    // Continua o spawn até atingir o máximo
    if (enemy_count < max_inimigos_horda3) {
        alarm[4] = room_speed * irandom_range(2, 4); // novo spawn entre 2 e 4 segundos
    } else {
        // Termina a horda
        spawn_ativo = false;
        show_debug_message("⚔️ Terceira horda concluída!");

        // Limpa inimigos restantes
        with (obj_inimigo) instance_destroy();
        with (obj_inimigo2) instance_destroy();
        with (obj_inimigo3) instance_destroy();
        with (obj_inimigo4) instance_destroy();

        // Chama o próximo boss (no alarm[5])
        alarm[5] = room_speed * 4;
    }
}
