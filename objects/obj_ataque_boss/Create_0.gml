/// Create Event - obj_ataque_boss

image_speed = 0.4;
tempo_ataque = room_speed * 5;
conta_atual = 0;
resposta_digitada = "";
alpha_tela = 0;

num_contas = 3;
contas = [];
respostas = [];

// Gera contas (somente + e -, sem resultados negativos)
for (var i = 0; i < num_contas; i++) {
    var a = irandom_range(2, 10);
    var b = irandom_range(2, 10);
    var op = choose("+", "-");

    // Evita números negativos
    if (op == "-" && a < b) {
        var temp = a;
        a = b;
        b = temp;
    }

    contas[i] = string(a) + op + string(b);
    respostas[i] = (op == "+") ? a + b : a - b;
}

// Guarda referência do boss
boss = instance_nearest(x, y, obj_boss);
