// === STEP EVENT ===

// Navegação ↑ ↓
if (keyboard_check_pressed(vk_up)) {
    opcao_selecionada--;
    if (opcao_selecionada < 0) opcao_selecionada = array_length(opcoes) - 1;
}

if (keyboard_check_pressed(vk_down)) {
    opcao_selecionada++;
    if (opcao_selecionada >= array_length(opcoes)) opcao_selecionada = 0;
}

// Selecionar com ENTER
if (keyboard_check_pressed(vk_enter)) {
    switch (opcao_selecionada) {
        case 0:
            room_goto(sala_jogo); // substitua pelo nome da sala principal
            break;
        case 1:
            room_goto(sala_tutorial); // substitua pelo nome da sala do tutorial
            break;
        case 2:
            game_end(); // fecha o jogo
            break;
    }
}
