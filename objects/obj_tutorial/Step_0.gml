// === STEP EVENT ===

// Avança automaticamente as etapas com base no tempo
if (tempo_mensagem > 0) {
    tempo_mensagem--;
    if (tempo_mensagem <= 0) {
        avancar_tutorial();
    }
}

// Etapa final — ENTER leva à sala principal
if (etapa == 7 && keyboard_check_pressed(vk_enter)) {
    room_goto(sala_jogo); // troque pelo nome da sua sala principal
}
