var key = keyboard_lastkey;

// BACKSPACE
if (key == vk_backspace && string_length(resposta_digitada) > 0) {
    resposta_digitada = string_delete(resposta_digitada, string_length(resposta_digitada), 1);
    exit;
}

// ENTER → confirma resposta
if (key == vk_enter) {
    if (string_length(resposta_digitada) > 0 && resposta_digitada != "-") {
        var valor = real(resposta_digitada);

        if (valor == resultado) {
            // ✅ Dano no boss
            if (instance_exists(obj_boss)) {
                with (obj_boss) {
                    vida -= 1;
                    show_debug_message("🔥 Dano no boss! Vida atual: " + string(vida));
                }
            }

            instance_destroy(); // some a conta
        } else {
            // ❌ Errou → jogador perde vida
            global.vida -= 3;
            show_debug_message("❌ Resposta errada!");
            instance_destroy();
        }
    }
    resposta_digitada = "";
    exit;
}

// NÚMEROS
if (key >= ord("0") && key <= ord("9")) {
    resposta_digitada += chr(key);
    exit;
}

// SINAL NEGATIVO (opcional)
if (key == ord("-") && string_length(resposta_digitada) == 0) {
    resposta_digitada = "-";
    exit;
}
