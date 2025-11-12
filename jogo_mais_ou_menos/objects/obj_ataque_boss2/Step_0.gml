/// Step Event - obj_ataque_boss2

// Contagem regressiva
if (tempo_ataque > 0) {
    tempo_ataque--;
    alpha_tela = lerp(alpha_tela, 0.4, 0.03);

    // pisca vermelho quando está acabando
    if (tempo_ataque < room_speed * 2) {
        piscando = true;
        piscando_timer = (piscando_timer + 1) mod 20;
    }
} else {
    // Tempo acabou
    if (!ataque_terminou) {
        global.vida -= 3;
        show_debug_message("💥 Falhou no ataque do boss!");
    }
    instance_destroy();
}
