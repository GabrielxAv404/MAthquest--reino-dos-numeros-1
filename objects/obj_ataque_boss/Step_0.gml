/// Step Event - obj_ataque_boss
tempo_ataque--;
alpha_tela = lerp(alpha_tela, 0.6, 0.03);

// Se o tempo acabar → jogador leva dano
if (tempo_ataque <= 0) {
    global.vida -= 3;
    show_debug_message("⏳ Tempo acabou! Jogador levou dano!");
    instance_destroy();
}
