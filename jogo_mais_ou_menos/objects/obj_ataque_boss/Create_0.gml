/// Create Event - obj_ataque_boss
image_speed = 0.4;

// Tempo do ataque
tempo_ataque = room_speed * 5;
tempo_max = tempo_ataque;

// Controle
conta_atual = 0;
resposta_digitada = "";
ataque_terminou = false;

// Número de contas
num_contas = 3;
contas = [];
respostas = [];

// Gera 3 contas aleatórias de soma/subtração (sem negativos)
for (var i = 0; i < num_contas; i++) {
    var a = irandom_range(0, 9);
    var b = irandom_range(0, 9);
    if (a < b) { var temp = a; a = b; b = temp; } // evita resultados negativos
    var op = choose("+", "-");
    contas[i] = string(a) + op + string(b);
    respostas[i] = (op == "+") ? a + b : a - b;
}

// efeito de tela
alpha_tela = 0;
