// Contagem de tempo
tempo_ataque--;

// Tempo acabou → jogador falhou
if (tempo_ataque <= 0) {
    global.vida -= 3; // dano no jogador
    instance_destroy();
}

// Digitação
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(resposta_digitada) > 0)
        resposta_digitada = string_delete(resposta_digitada, string_length(resposta_digitada), 1);
}

var key = keyboard_lastkey;
if (key >= ord("0") && key <= ord("9")) {
    resposta_digitada += chr(key);
}

// Enter confirma a resposta
if (keyboard_check_pressed(vk_enter)) {
    if (real(resposta_digitada) == respostas[conta_atual]) {
        conta_atual++;
        resposta_digitada = "";

        if (conta_atual >= 3) {
            instance_destroy(); // defendeu todas
        }
    } else {
        global.vida -= 3;
        instance_destroy();
    }
}
