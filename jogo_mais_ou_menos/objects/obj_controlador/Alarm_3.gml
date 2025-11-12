if (!boss2_spawned && !instance_exists(obj_boss2)) {
    boss2_spawned = true;
    instance_create_layer(room_width / 2, room_height + 200, "Instances_1", obj_boss2);

    show_debug_message("Boss 2 invocado!");
    mensagem_boss_texto = "⚠️ Um novo inimigo surge das profundezas!";
    mensagem_boss_tempo = room_speed * 3;
}
