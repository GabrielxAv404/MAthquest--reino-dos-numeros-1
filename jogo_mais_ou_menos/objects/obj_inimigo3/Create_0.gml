
vida = 1;
estado = "descendo_lento"; // pode ser: descendo_lento → mergulhando
tempo_descida_lenta = room_speed * irandom_range( 2, 4); // tempo antes do mergulho

// Velocidades
velocidade_lenta = 0.5;
velocidade_rapida = 7;

// Gera a conta de multiplicação
var a = irandom_range(2, 9);
var b = irandom_range(2, 9);
conta = string(a) + " × " + string(b);
resultado = a * b;
