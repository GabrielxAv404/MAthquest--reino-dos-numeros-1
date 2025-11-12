// Número de áreas de ataque
num_ataques = 4;

// Duração de cada fase
tempo_alerta = room_speed * 2.5; // tempo piscando
tempo_disparo = room_speed * 0.7; // tempo de raio ativo

// Fase atual
fase = "alerta";

// Guarda as posições dos ataques
posicoes = [];

// Cria posições aleatórias (no chão)
for (var i = 0; i < num_ataques; i++) {
    var px = irandom_range(100, room_width - 100);
    var py = irandom_range(room_height / 2 + 100, room_height - 80);
    posicoes[i] = [px, py];
}

// Som do aviso
if (sound_exists(snd_alerta_raio)) {
    audio_play_sound(snd_alerta_raio, 1, false);
}
