if (ataque_terminou) exit;

var key = keyboard_lastkey;

// Apagar último caractere
if (key == vk_backspace && string_length(resposta_digitada) > 0) {
    resposta_digitada = string_delete(resposta_digitada, string_length(resposta_digitada), 1);
}

// Confirmar resposta
else if (key == vk_enter) {
    if (string_length(resposta_digitada) > 0) {
        var resposta_num = real(resposta_digitada);

        if (resposta_num == respostas[conta_atual]) {
            conta_atual++;
            resposta_digitada = "";
            if (conta_atual >= array_length(contas)) {
                if (instance_exists(boss)) boss.vida -= 1;
                show_debug_message("✅ Acertou! Boss levou dano!");
                ataque_terminou = true;
                instance_destroy();
            }
        } else {
            global.vida -= 3;
            show_debug_message("❌ Errou! Jogador levou dano!");
            ataque_terminou = true;
            instance_destroy();
        }
    }
}

// Digitar número
else if (key >= ord("0") && key <= ord("9")) {
    resposta_digitada += chr(key);
}
