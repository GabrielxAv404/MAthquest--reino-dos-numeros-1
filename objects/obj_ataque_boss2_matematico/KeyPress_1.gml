/// Key Press – Any Key (obj_ataque_boss2_matematico)

// Apagar com Backspace
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(resposta_digitada) > 0) {
        resposta_digitada = string_delete(resposta_digitada, string_length(resposta_digitada), 1);
    }
}

// Captura números digitados
var key = keyboard_lastkey;
if (key >= ord("0") && key <= ord("9")) {
    resposta_digitada += chr(key);
}

// Confirmar resposta com ENTER
if (keyboard_check_pressed(vk_enter)) {
    // Verifica se ainda há contas
    if (real(resposta_digitada) == respostas[conta_atual]) {
        conta_atual++;
        resposta_digitada = "";

        // Se acertou todas as 3 contas, defendeu com sucesso
        if (conta_atual >= 3) {
            show_debug_message("✅ Defesa bem-sucedida!");
            instance_destroy();
        }
    } else {
        // Errou → leva dano
        global.vida -= 3;
        show_debug_message("❌ Errou! Levou dano.");
        instance_destroy();
    }
}
