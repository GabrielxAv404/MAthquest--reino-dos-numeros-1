// Tempo de duração
tempo_ataque = room_speed * 6;

// Contas de soma, subtração e multiplicação
contas = [];
respostas = [];
resposta_digitada = "";
conta_atual = 0;

// Gera 3 contas aleatórias
for (var i = 0; i < 3; i++) {
    var a = irandom_range(1, 9);
    var b = irandom_range(1, 9);
    var op = choose("+", "-", "x"); // adiciona multiplicação

    // Monta a expressão e o resultado
    contas[i] = string(a) + op + string(b);

    switch (op) {
        case "+": respostas[i] = a + b; break;
        case "-": respostas[i] = a - b; break;
        case "x": respostas[i] = a * b; break;
    }
}
