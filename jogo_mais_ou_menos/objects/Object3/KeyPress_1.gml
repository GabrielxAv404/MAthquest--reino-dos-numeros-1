// Apagar com Backspace
if (keyboard_check_pressed(vk_backspace)) {
    if (string_length(texto) > 0) {
        texto = string_delete(texto, string_length(texto), 1);
    }
}

// Digitar apenas números
if (keyboard_lastkey >= ord("0") && keyboard_lastkey <= ord("9")) {
    texto += chr(keyboard_lastkey);
}

// ENTER → Validar
if (keyboard_check_pressed(vk_enter)) {
    if (string_length(texto) > 0) {
        var valor = real(texto);

        // Verifica todos os tipos de inimigo
        var alvo1 = instance_nearest(x, y, obj_inimigo);
        var alvo2 = instance_nearest(x, y, obj_inimigo2);
        var alvo3 = instance_nearest(x, y, obj_inimigo3);

        // Função auxiliar
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

        // Tenta acertar um dos inimigos
        if (!checar_inimigo(alvo1))
        if (!checar_inimigo(alvo2))
        checar_inimigo(alvo3);
    }

    texto = ""; // Limpa após tentar
}
// Checar Boss 2
if (instance_exists(obj_boss2)) {
    var boss = obj_boss2;
    if (real(texto) == boss.resultado_correto && boss.estado == "indefeso") {
        boss.vida -= 1;
        if (boss.vida <= 0) {
            with (boss) {
                estado = "derrotado";
            }
        }
    }
}
