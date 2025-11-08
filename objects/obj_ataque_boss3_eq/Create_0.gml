// Tempo e dificuldade
tempo_ataque = room_speed * 4; // 4 segundos no total
tempo_max = tempo_ataque;

// Controle de progresso
conta_atual = 0;
resposta_digitada = "";
alpha_tela = 0;

// Gera 3 equações simples (tipo: 3x + 2 = 11)
contas = [];
respostas = [];

for (var i = 0; i < 3; i++) {
    var x_val = irandom_range(1, 9);
    var a = irandom_range(1, 9);
    var b = irandom_range(1, 9);
    var resultado = (a * x_val) + b;

    contas[i] = string(a) + "x + " + string(b) + " = " + string(resultado);
    respostas[i] = string(x_val);
}

// Inicia animação visual
image_speed = 0.3;
