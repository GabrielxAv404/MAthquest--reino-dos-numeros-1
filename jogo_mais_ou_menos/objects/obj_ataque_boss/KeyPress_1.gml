/// Key Press – Any Key
if (ataque_terminou) exit;

var key = keyboard_lastkey;

// Apagar
if (key == vk_backspace && string_length(resposta_digitada) > 0) {
    resposta_digitada = string_delete(resposta_digitada, string_length(resposta_digitada), 1);
}

// Confirmar com Enter
else if (key == vk_enter) {
    if (string_length(resposta_digitada) > 0 && real(resposta_digitada) == respostas[conta_atual]) {
        conta_atual++;
        resposta_digitada = "";
        if (conta_atual >= array_length(contas)) {
            ataque_terminou = true;
            show_debug_message("✅ Defendeu com sucesso!");
            instance_destroy();
        }
    } else {
        global.vida -= 3; // errou → dano
        ataque_terminou = true;
        show_debug_message("❌ Errou a conta!");
        instance_destroy();
    }
}

// Números (somente 0–9)
else if (key >= ord("0") && key <= ord("9")) {
    resposta_digitada += chr(key);
}
