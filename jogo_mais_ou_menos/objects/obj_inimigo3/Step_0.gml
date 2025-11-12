switch (estado) {

    case "descendo_lento":
        // Desce devagar, simulando uma entrada lenta
        y += velocidade_lenta;

        tempo_descida_lenta--;

        // Quando o tempo acabar, troca para mergulho rápido
        if (tempo_descida_lenta <= 0) {
            estado = "mergulhando";
        }
        break;

    case "mergulhando":
        // Desce bem mais rápido
        y += velocidade_rapida;
        break;
}

// Destroi se sair da tela
if (y > room_height + sprite_height) {
    instance_destroy();
}
