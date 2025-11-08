randomize();

// Variáveis gerais
screen_flash = 0;
mensagem_boss_tempo = 0;
mensagem_boss_texto = "";
numero_digitado = "";
inimigos_derrotados = 0;
spawn_ativo = true;
enemy_count = 0;
max_enemies = 30;
boss_spawned = false;
resultado_correto = 0;
fase = 1; // 1 = primeira horda, 2 = segunda horda
boss_derrotado = false;
// Limite máximo de inimigos visíveis
limite_inimigos_na_tela = 4
boss2_derrotado = false;
max_inimigos_horda3 = 40; // total da terceira horda
fase = 1; // começa na fase 1
boss2_spawned = false;

// Controle de spawn
spawn_ativo = true;

global.vida = 1000;

// Começa a primeira horda
alarm[0] = room_speed * 2;
