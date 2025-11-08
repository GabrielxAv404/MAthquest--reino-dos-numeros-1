/// Alarm[5] — Boss 3 Final
if (!boss3_spawned) {
    boss3_spawned = true;

    // Mensagem de alerta
    mensagem_boss_texto = "⚠ O BOSS FINAL ESTÁ SUBINDO ⚠";
    mensagem_boss_tempo = room_speed * 4;

    // Destroi inimigos restantes
    with (obj_inimigo) instance_destroy();
    with (obj_inimigo2) instance_destroy();
    with (obj_inimigo3) instance_destroy();
    with (obj_inimigo4) instance_destroy();

    // Cria o boss subindo
    var b3 = instance_create_layer(room_width / 2, room_height + 200, "Instances_1", obj_boss3);
    show_debug_message("Boss Final iniciado!");
}
