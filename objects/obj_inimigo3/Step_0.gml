// Movimento baseado no estado atual
switch (estado) {
    case "descendo_lento":
        y += velocidade_lenta;
        tempo_descida_lenta--;

        // Quando o tempo acabar, ele começa a mergulhar rápido
        if (tempo_descida_lenta <= 0) {
            estado = "mergulhando";
        }
        break;

    case "mergulhando":
        y += velocidade_rapida;
        break;
}

// Se sair da tela, destrói para evitar acumular
if (y > room_height + 64) {
    instance_destroy();
}
