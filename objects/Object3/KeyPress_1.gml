// Apagar com Backspace
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(texto) > 0) {
        texto = string_delete(texto, string_length(texto), 1);
    }
}

// Digitar números (0–9)
if (keyboard_lastkey >= ord("0") && keyboard_lastkey <= ord("9")) {
    texto += chr(keyboard_lastkey);
}

// Pressionar ENTER
if (keyboard_check_pressed(vk_enter)) {
    if (string_length(texto) > 0) {
        var valor = real(texto); // número digitado

        // Inimigos
        var alvo1 = instance_nearest(x, y, obj_inimigo);
        var alvo2 = instance_nearest(x, y, obj_inimigo2);
        var alvo3 = instance_nearest(x, y, obj_inimigo3);

        // Função para checar o inimigo
        function checar_inimigo(alvo) {
            if (instance_exists(alvo)) {
                if (valor == alvo.resultado) {
                    alvo.vida -= 1;
                    if (alvo.vida <= 0) {
                        with (obj_controlador) inimigos_derrotados++;
                        instance_destroy(alvo);
                    }
                    return true;
                }
            }
            return false;
        }

        // Verifica os inimigos
        if (!checar_inimigo(alvo1))
        if (!checar_inimigo(alvo2))
        checar_inimigo(alvo3);

        // Boss 2
        if (instance_exists(obj_boss2)) {
            var boss = obj_boss2;

            if (valor == boss.resultado_correto) {
                boss.vida -= 1;
                show_debug_message("Boss 2 levou dano! Vida: " + string(boss.vida));

                if (boss.vida <= 0) {
                    with (boss) estado = "derrotado";
                    if (instance_exists(obj_controlador)) {
                        with (obj_controlador) boss2_derrotado = true;
                    }
                }
            } else {
                global.vida -= 3; // jogador leva dano se errar
            }
        }
    }

    texto = ""; // limpa o texto
}
