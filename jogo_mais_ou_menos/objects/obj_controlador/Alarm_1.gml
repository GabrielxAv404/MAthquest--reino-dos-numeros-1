if (!boss_spawned) {
    mensagem_boss_texto = "⚠ O BOSS ESTÁ CHEGANDO! ⚠";
    mensagem_boss_tempo = room_speed * 3;

    instance_create_layer(room_width / 2, room_height / 2 - 150, "Instances_1", obj_boss);
    boss_spawned = true;


    // Desativa spawns normais
    spawn_ativo = false;

    // Destroi inimigos existentes
    with (obj_inimigo) instance_destroy();
    with (obj_inimigo2) instance_destroy();
    with (obj_inimigo2_1) instance_destroy();
}

