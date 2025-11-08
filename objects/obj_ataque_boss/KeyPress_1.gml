if (!instance_exists(boss)) exit;

var key = keyboard_lastkey;

// Apagar
if (key == vk_backspace && string_length(resposta_digitada) > 0)
    resposta_digitada = string_delete(resposta_digitada, string_length(resposta_digitada), 1);

// Enter confirma
else if (key == vk_enter) {
    if (string_length(resposta_digitada) > 0) {
        var resposta_num = real(resposta_digitada);

        if (resposta_num == respostas[conta_atual]) {
            // jogador acertou
            conta_atual++;
            resposta_digitada = "";

            if (conta_atual >= array_length(contas)) {
                boss.vida -= 1;
                show_debug_message("Acertou todas! Boss leva dano.");
                instance_destroy();
            }
        } else {
            // jogador errou
            global.vida -= 3;
            show_debug_message("Errou! Jogador leva dano.");
            instance_destroy();
        }
    }
}

// Digitação de números
else if (key >= ord("0") && key <= ord("9"))
    resposta_digitada += chr(key);
