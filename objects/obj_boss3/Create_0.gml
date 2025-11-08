/// CREATE EVENT — OBJ_BOSS3

// ⚔️ Configuração geral
vida = 15;
estado = "subindo"; // subindo → atacando → morrendo

// Posição inicial e destino
y_inicial = room_height + 200;
y_final = room_height / 2;
y = y_inicial;

// Controle de ataque
ataque_timer = room_speed * irandom_range(3, 5);
ataque_em_andamento = false;

// Efeitos visuais
fade_alpha = 0;     // para possível fade
piscando = false;   // boss pisca quando apanha
vel_subida = 2;     // velocidade da subida
vibrar_forca = 0.05; // vibração mais forte

// Tremor da entrada
screen_shake = 20;

// Define cor inicial
image_blend = c_white;

// Comunicação com o controlador
if (instance_exists(obj_controlador)) {
    with (obj_controlador) fase = 5; // marca o início da fase final
}
