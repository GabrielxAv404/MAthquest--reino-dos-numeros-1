var key = keyboard_lastkey;

if (key >= ord("0") && key <= ord("9"))
    resposta_digitada += chr(key);

if (key == vk_backspace && string_length(resposta_digitada) > 0)
    resposta_digitada = string_delete(resposta_digitada, string_length(resposta_digitada), 1);

if (key == vk_enter) {
    if (real(resposta_digitada) == numero_atual) {
        acertos++;
        numero_atual = irandom_range(10, 99);
        resposta_digitada = "";
        if (acertos >= 3) instance_destroy(); // sucesso
    } else {
        global.vida -= 4;
        instance_destroy();
    }
}
