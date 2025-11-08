// OBJ_CONTROLADOR — Alarm[0]

// Só cria inimigos se o boss ainda não apareceu
if (spawn_ativo && !boss_spawned) {
    var tipo = irandom_range(1, 10);

    if (tipo <= 8) {
        instance_create_layer(irandom_range(32, room_width - 32), -64, "Instances", obj_inimigo);
    } else {
        instance_create_layer(irandom_range(32, room_width - 32), -64, "Instances", obj_inimigo2);
    }

    enemy_count++;
    alarm[0] = room_speed * 3.5; // agenda novo spawn
}

// Checa se 30 inimigos foram derrotados
if (inimigos_derrotados >= max_enemies && !boss_spawned) {
    alarm[1] = room_speed * 3; // chama o boss depois de 2s
}
// Verifica quantos inimigos existem na tela
var total_inimigos = instance_number(obj_inimigo)
                   + instance_number(obj_inimigo2)

// Só cria se ainda estiver abaixo do limite
if (total_inimigos < limite_inimigos_na_tela) {
    var tipo_inimigo = choose(obj_inimigo, obj_inimigo2);
    instance_create_layer(irandom(room_width - 64), 0, "Instances_1", tipo_inimigo);
    enemy_count++;
}

