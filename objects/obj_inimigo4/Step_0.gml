/// Step Event - obj_inimigo4

// Movimento: primeiro lento, depois rápido
switch (estado) {
    case "descendo_lento":
        y += velocidade_y;
        tempo_descida--;
        if (tempo_descida <= 0) estado = "descendo_rapido";
        break;

    case "descendo_rapido":
        y += velocidade_descida_rapida;
        break;
}

// Se sair da tela, destrói
if (y > room_height + 64) instance_destroy();
