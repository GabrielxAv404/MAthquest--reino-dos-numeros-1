var key = keyboard_lastkey;

// Apagar
if (key == vk_backspace && string_length(resposta_digitada) > 0)
    resposta_digitada = string_delete(resposta_digitada, string_length(resposta_digitada), 1);

// Digitar número
if (key >= ord("0") && key <= ord("9"))
    resposta_digitada += chr(key);

// Confirmar
if (key == vk_enter) {
    if (resposta_digitada == respostas[conta_atual]) {
        conta_atual++;
        resposta_digitada = "";
        if (conta_atual >= array_length(contas)) {
            instance_destroy(); // Defendeu com sucesso
        }
    } else {
        global.vida -= 4;
        instance_destroy();
    }
}
