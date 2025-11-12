/// Step Event - obj_ataque_boss
if (tempo_ataque > 0) {
    tempo_ataque--;
    alpha_tela = lerp(alpha_tela, 0.5, 0.02);
} else {
    // tempo acabou
    if (!ataque_terminou) {
        global.vida -= 3; // dano no jogador
        show_debug_message("⛔ Errou! Tomou dano!");
    }
    instance_destroy();
}
