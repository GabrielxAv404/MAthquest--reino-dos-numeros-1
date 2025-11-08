tempo_ataque--;
alpha_tela = lerp(alpha_tela, 0.6, 0.03);

// Tempo acabou → jogador leva dano
if (tempo_ataque <= 0 && !ataque_terminou) {
    ataque_terminou = true;
    global.vida -= 3;
    show_debug_message("⏳ Tempo acabou! Jogador levou dano!");
    instance_destroy();
}
