if (screen_flash > 0) {
    screen_flash--;
}

if (mensagem_boss_tempo > 0) {
    mensagem_boss_tempo--;
}
// Verifica se o jogador digitou uma resposta correta quando o boss está indefeso
if (instance_exists(obj_boss)) {
    var boss = instance_find(obj_boss, 0);

    // se o boss está indefeso e o jogador acertou a conta
    if (boss.estado == "indefeso" && numero_digitado == string(resultado_correto)) {
        boss.vida -= 1;
        numero_digitado = ""; // limpa o número
        if (boss.vida <= 0) {
            instance_destroy(boss);
            show_debug_message("Boss derrotado!");
        }
    }
}
// Quando derrotar 30 inimigos
if (inimigos_derrotados >= max_enemies && !boss_spawned) {
    spawn_ativo = false; // para de criar inimigos

    // Destroi todos os inimigos existentes
    with (obj_inimigo) instance_destroy();
    with (obj_inimigo2) instance_destroy();
    with (obj_inimigo2_1) instance_destroy();

    // Cria o boss uma única vez
    instance_create_layer(room_width / 2, room_height / 3, "Instances_1", obj_boss);
    boss_spawned = true;
}
// Checa se o jogador derrotou 30 inimigos
if (inimigos_derrotados >= 30 && !boss_spawned) {
    alarm[1] = room_speed * 3; // atraso de 3s antes do boss surgir
}

// Mensagem de aviso do boss
if (mensagem_boss_tempo > 0) {
    mensagem_boss_tempo--;
    draw_set_font(-1);
    draw_set_halign(fa_center);
    draw_set_color(c_red);
    draw_text(room_width/2, room_height/2 - 100, mensagem_boss_texto);
    draw_set_halign(fa_left);
}
// Avança para a próxima fase quando o boss for derrotado
if (fase == 1 && boss_derrotado) {
    fase = 2;
    show_debug_message("➡️ Fase 2 iniciada!");
    
    // Começa a nova horda (exemplo: Alarm[2])
    enemy_count = 0;
    spawn_ativo = true;
    alarm[2] = room_speed * 2; // pequena espera antes de começar
}
if (boss2_derrotado) {
    show_debug_message("Boss 2 derrotado! Fase concluída!");
}
if (mensagem_boss_tempo > 0) {
    mensagem_boss_tempo--;
}
/// STEP EVENT — controle de vida e fim de jogo

// Se a vida global acabar
// Verifica se o jogador morreu
if (global.vida <= 0) {
    // Mostra mensagem no console (debug)
    show_debug_message("Jogador morreu!");
    
    // Cria o objeto da tela de Game Over
    instance_create_layer(room_width / 2, room_height / 2, "Instances_1", obj_gameover);
    
    // Desativa tudo
    spawn_ativo = false;
    
    // Destroi inimigos e bosses ativos
    with (obj_inimigo) instance_destroy();
    with (obj_inimigo2) instance_destroy();
    with (obj_inimigo3) instance_destroy();
    with (obj_inimigo4) instance_destroy();
    with (obj_boss) instance_destroy();
    with (obj_boss2) instance_destroy();
    with (obj_boss3) instance_destroy();
    
    // Destroi o controlador antigo para reiniciar depois
    instance_destroy(id);
}


