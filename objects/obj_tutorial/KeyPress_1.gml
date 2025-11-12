if (etapa == 4) {
    var key = keyboard_lastkey;

    // Apagar com Backspace
    if (key == vk_backspace && string_length(texto_digitado) > 0) {
        texto_digitado = string_delete(texto_digitado, string_length(texto_digitado), 1);
    }

    // Digitar números
    else if (key >= ord("0") && key <= ord("9")) {
        texto_digitado += chr(key);
    }

    // Confirmar resposta
    else if (key == vk_enter) {
        if (string_length(texto_digitado) > 0) {
            if (real(texto_digitado) == resposta_correta) {
                mensagem = "Correto!";
                tempo_mensagem = room_speed * 2;
                texto_digitado = "";
                avancar_tutorial();
            } else {
                mensagem = "Tente novamente!";
                texto_digitado = "";
            }
        } else {
            mensagem = "Digite um número primeiro!";
        }
    }
}
