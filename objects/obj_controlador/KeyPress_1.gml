var key = keyboard_lastkey;

// Backspace apaga
if (key == vk_backspace) {
    if (string_length(numero_digitado) > 0) {
        numero_digitado = string_delete(numero_digitado, string_length(numero_digitado), 1);
    }
}
// ENTER confirma
else if (key == vk_enter) {
    numero_digitado = "";
}
// Adiciona número
else if (key >= ord("0") && key <= ord("9")) {
    numero_digitado += chr(key);
}
