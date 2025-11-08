// Navegar entre opções
if (keyboard_check_pressed(vk_up)) {
    opcao_selecionada--;
    if (opcao_selecionada < 0) opcao_selecionada = array_length(opcoes) - 1;
}

if (keyboard_check_pressed(vk_down)) {
    opcao_selecionada++;
    if (opcao_selecionada >= array_length(opcoes)) opcao_selecionada = 0;
}

// Confirmar opção (Enter)
if (keyboard_check_pressed(vk_enter)) {
    switch (opcao_selecionada) {
        case 0: // Start
            room_goto(sala_jogo); // substitua pelo nome da sala principal
            break;

        case 1: // Tutorial
            room_goto(sala_tutorial); // sala com instruções
            break;

        case 2: // Configurações
            room_goto(sala_configuracoes); // sala de opções
            break;
    }
}
