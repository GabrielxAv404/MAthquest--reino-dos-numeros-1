/// Alarm[2] - Segunda Horda
show_debug_message("⚔️ Segunda horda ativa!");

// Garante que o sistema de spawn está habilitado
spawn_ativo = true;

// Garante que a contagem reinicie se começar a segunda horda
if (enemy_count <= 0 || fase != 2) {
    fase = 2;
    enemy_count = 0;
    show_debug_message("🔁 Contador reiniciado para a fase 2");
}

// Spawna inimigos se ainda não atingiu o limite
if (spawn_ativo && fase == 2) {
    var limite_inimigos_na_tela = 6; // máximo na tela ao mesmo tempo
    var total_na_tela = instance_number(obj_inimigo) + instance_number(obj_inimigo2) + instance_number(obj_inimigo3);

    // Só cria se ainda não atingiu o limite de inimigos visíveis
    if (total_na_tela < limite_inimigos_na_tela) {
        var tipo_inimigo = choose(obj_inimigo, obj_inimigo2, obj_inimigo3);
        instance_create_layer(irandom(room_width - 64), 0, "Instances_1", tipo_inimigo);
        enemy_count++;
        show_debug_message("🧟 Inimigo criado (" + string(enemy_count) + "/30)");
    }

    // Continua o spawn até atingir 30 inimigos criados
    if (enemy_count < 30) {
        alarm[2] = room_speed * irandom_range(2, 4);
    } else {
        // Quando atingir 30 inimigos → parar o spawn e preparar o boss
        spawn_ativo = false;
        show_debug_message("🔥 Segunda horda concluída!");
        alarm[3] = room_speed * 3; // chama o boss 2
    }
}
