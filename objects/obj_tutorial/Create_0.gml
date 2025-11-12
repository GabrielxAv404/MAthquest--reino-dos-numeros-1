// === CREATE EVENT ===
// Define variáveis iniciais
etapa = 0;
mensagem = "";
tempo_mensagem = room_speed * 3;
texto_digitado = "";
resposta_correta = -1;

// Função local para avançar o tutorial
function avancar_tutorial() {
    etapa++;

    switch (etapa) {
        case 1:
            mensagem = "Bem-vindo ao MathQuest!";
            tempo_mensagem = room_speed * 3;
            break;

        case 2:
            mensagem = "Aqui, você deve derrotar inimigos resolvendo contas matemáticas.";
            tempo_mensagem = room_speed * 4;
            break;

        case 3:
            mensagem = "Digite o resultado correto e pressione ENTER para atacar.";
            tempo_mensagem = room_speed * 4;
            break;

        case 4:
            mensagem = "Tente agora! Resolva: 3 + 4 = ?";
            tempo_mensagem = -1; // Espera o jogador responder
            resposta_correta = 7;
            break;

        case 5:
            mensagem = "Perfeito! É assim que você derrota inimigos.";
            tempo_mensagem = room_speed * 3;
            break;

        case 6:
            mensagem = "Cuidado! Se errar a conta, você perde vida.";
            tempo_mensagem = room_speed * 3;
            break;

        case 7:
            mensagem = "Boa sorte! Pressione ENTER para começar sua aventura.";
            tempo_mensagem = -1;
            resposta_correta = -1;
            break;
    }
}

// Inicia o tutorial
avancar_tutorial();
