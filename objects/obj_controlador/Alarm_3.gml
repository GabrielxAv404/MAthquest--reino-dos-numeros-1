/// Alarm[3] - Aparece o Boss 2
if (!boss2_spawned) {
    boss2_spawned = true;

    mensagem_boss_texto = "☠ O SEGUNDO BOSS ESTÁ SUBINDO! ☠";
    mensagem_boss_tempo = room_speed * 3;

    // Limpa inimigos restantes
    with (obj_inimigo) instance_destroy();
    with (obj_inimigo2) instance_destroy();
    with (obj_inimigo3) instance_destroy();

    // Cria o segundo boss vindo de baixo
    var boss2 = instance_create_layer(room_width / 2, room_height + 200, "Instances_1", obj_boss2);
    show_debug_message("☠ Boss 2 apareceu!");
}
