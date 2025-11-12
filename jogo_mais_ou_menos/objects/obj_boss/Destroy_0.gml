// Quando o boss morre
if (instance_exists(obj_ataque_boss)) {
    with (obj_ataque_boss) instance_destroy();
}
// Verifica se o boss foi derrotado
// Quando o boss morre, marca ele como derrotado no controlador
if (instance_exists(obj_controlador)) {
    obj_controlador.boss_derrotado = true;
}

