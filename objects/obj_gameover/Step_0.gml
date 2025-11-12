// Navegação entre opções
if (keyboard_check_pressed(vk_up)) {
    opcao_selecionada--;
    if (opcao_selecionada < 0) opcao_selecionada = array_length(opcoes) - 1;
}

if (keyboard_check_pressed(vk_down)) {
    opcao_selecionada++;
    if (opcao_selecionada >= array_length(opcoes)) opcao_selecionada = 0;
}

// Confirmar opção
if (keyboard_check_pressed(vk_enter)) {
    switch (opcao_selecionada) {
        case 0: // Recomeçar
            room_restart();
            break;

        case 1: // Menu Principal
            room_goto(sala_menu); // Substitua pelo nome real da sua sala de menu
            break;
    }
}
