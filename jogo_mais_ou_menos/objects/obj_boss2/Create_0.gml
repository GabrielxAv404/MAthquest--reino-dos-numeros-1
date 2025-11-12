vida = 18;
estado = "subindo"; // estados: subindo, lutando, indefeso, derrotado

// Começa abaixo da tela
y = room_height + sprite_height;

// Velocidade de subida
velocidade_subida = 2;

// Controle de ataques
ataque_timer = room_speed * irandom_range(4, 7);
ataque_ativo = false;

// Efeitos de entrada
tremor_tempo = room_speed; // duração do tremor
tremor_intensidade = 6;

// Som de entrada (substitua pelo seu som grave, ex: snd_boss_subida)
if (sound_exists(snd_boss_subida)) {
    audio_play_sound(snd_boss_subida, 1, false);
}
