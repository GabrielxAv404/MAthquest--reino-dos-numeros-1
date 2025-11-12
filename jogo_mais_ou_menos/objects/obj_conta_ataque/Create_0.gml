// Cria uma conta simples
var a = irandom_range(1, 9);
var b = irandom_range(1, 9);
var op = choose("+", "-");

expressao = string(a) + op + string(b);

switch (op) {
    case "+": resultado = a + b; break;
    case "-": resultado = a - b; break;
}

resposta_digitada = "";
