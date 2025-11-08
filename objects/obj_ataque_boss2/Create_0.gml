image_speed = 0.4;
tempo_ataque = room_speed * 5;
conta_atual = 0;
resposta_digitada = "";
alpha_tela = 0;
ataque_terminou = false;

num_contas = 3;
contas = [];
respostas = [];

// Gera contas de soma e subtração sem resultados negativos
for (var i = 0; i < num_contas; i++) {
    var a = irandom_range(2, 10);
    var b = irandom_range(2, 10);
    var op = choose("+", "-");
    if (op == "-" && a < b) {
        var temp = a; a = b; b = temp;
    }
    contas[i] = string(a) + op + string(b);
    respostas[i] = (op == "+") ? a + b : a - b;
}

// Referência do boss
boss = instance_nearest(x, y, obj_boss);
