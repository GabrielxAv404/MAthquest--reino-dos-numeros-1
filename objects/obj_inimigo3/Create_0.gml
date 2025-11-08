// Vida do inimigo
vida = 1;

// Estados possíveis: descendo lentamente ou mergulhando rápido
estado = "descendo_lento";

// Tempo antes de ele começar o mergulho rápido
tempo_descida_lenta = room_speed * irandom_range(2, 4);

// Velocidades
velocidade_lenta = 0.5;
velocidade_rapida = 7;

// Gera a conta de multiplicação uma única vez
var a = irandom_range(2, 9);
var b = irandom_range(2, 9);
conta = string(a) + " × " + string(b);
resultado = a * b;
