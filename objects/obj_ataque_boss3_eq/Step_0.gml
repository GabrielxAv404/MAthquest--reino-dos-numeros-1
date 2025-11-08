// Diminui o tempo
tempo_ataque--;
alpha_tela = lerp(alpha_tela, 0.7, 0.05);

// Tempo acabou → dano no jogador
if (tempo_ataque <= 0) {
    global.vida -= 4;
    instance_destroy();
}
