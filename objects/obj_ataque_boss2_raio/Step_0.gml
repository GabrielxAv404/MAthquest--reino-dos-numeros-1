switch (fase) {
    case "alerta":
        tempo_alerta--;
        if (tempo_alerta <= 0) {
            fase = "disparo";

            // Som do raio
            //if (sound_exists(snd_raio_disparo)) {
            //    audio_play_sound(snd_raio_disparo, 1, false);
          //  }
        }
        break;

    case "disparo":
        tempo_disparo--;
        if (tempo_disparo <= 0) {
            instance_destroy(); // ataque terminou
        } else {
            // Verifica colisão com o jogador (ajuste o nome do player)
            if (instance_exists(obj_player)) {
                var player = obj_player;
                for (var i = 0; i < array_length(posicoes); i++) {
                    var px = posicoes[i][0];
                    var py = posicoes[i][1];
                    if (point_distance(player.x, player.y, px, py) < 50) {
                        global.vida -= 2;
                    }
                }
            }
        }
        break;
}
