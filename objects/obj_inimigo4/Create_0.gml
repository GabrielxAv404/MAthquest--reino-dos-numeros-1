/// Create Event - obj_inimigo4

// Movimento
velocidade_y = 1; // desce devagar
velocidade_descida_rapida = 5; // desce rápido
estado = "descendo_lento";

// Vida
vida = 2;

// Gerar equação simples de 1º grau
var tipo = choose(1, 2, 3);
var v_x, v_a, v_b, v_c; // evita conflito com variáveis internas

switch (tipo) {
    case 1:
        // x + b = c
        v_b = irandom_range(1, 9);
        v_c = irandom_range(v_b + 1, 15);
        v_x = v_c - v_b;
        texto = "x + " + string(v_b) + " = " + string(v_c);
        resultado = v_x;
        break;

    case 2:
        // a + x = c
        v_a = irandom_range(1, 9);
        v_c = irandom_range(v_a + 1, 15);
        v_x = v_c - v_a;
        texto = string(v_a) + " + x = " + string(v_c);
        resultado = v_x;
        break;

    case 3:
        // a - x = b
        v_a = irandom_range(5, 15);
        v_b = irandom_range(1, v_a - 1);
        v_x = v_a - v_b;
        texto = string(v_a) + " - x = " + string(v_b);
        resultado = v_x;
        break;
}

// Tempo até o mergulho rápido
tempo_descida = room_speed * irandom_range(2, 5);
