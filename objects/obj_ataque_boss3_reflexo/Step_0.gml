tempo_ataque--;
troca_timer--;

if (troca_timer <= 0) {
    numero_atual = irandom_range(10, 99);
    troca_timer = room_speed * 1.2;
}

if (tempo_ataque <= 0) {
    global.vida -= 4; // levou dano
    instance_destroy();
}

// Piscar tela
alpha_tela = 0.4 + 0.3 * sin(current_time / 120);
