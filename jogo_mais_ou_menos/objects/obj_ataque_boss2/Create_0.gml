/// Create Event - obj_ataque_boss2

image_speed = 0.3; // velocidade da animação
tempo_ataque = room_speed * 6; // 6 segundos de duração
tempo_max = tempo_ataque;

contas = [];
respostas = [];
resposta_digitada = "";
conta_atual = 0;
ataque_terminou = false;
alpha_tela = 0;

// cria 3 contas de multiplicação (sem negativos)
for (var i = 0; i < 3; i++) {
    var a = irandom_range(1, 9);
    var b = irandom_range(1, 9);
    contas[i] = string(a) + " x " + string(b);
    respostas[i] = a * b;
}

// feedback visual
piscando = false;
piscando_timer = 0;
