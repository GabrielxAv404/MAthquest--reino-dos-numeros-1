/// Step Event - obj_ataque_boss2_matematico

tempo_ataque--;

if (tempo_ataque <= 0) {
    global.vida -= 3; // tempo acabou → dano no jogador
    show_debug_message("⏰ Tempo acabou! Levou dano.");
    instance_destroy();
}
