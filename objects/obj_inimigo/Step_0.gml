y+=vel  // Pode mudar para mais vidas
if (global.vida<=0){
	room_restart()}
// Se sair da tela → destrói e conta como eliminado
if (y > room_height) {
    instance_destroy();
		 global.vida-=1
}
/// Verifica se o número digitado está correto
if (obj_controlador.numero_digitado != "") {
    if (real(obj_controlador.numero_digitado) == resultado) {

        obj_controlador.inimigos_derrotados += 1; // soma ✅
        obj_controlador.numero_digitado = "";

        // Verifica limite de inimigos
     if (obj_controlador.inimigos_derrotados >= 30) {
            obj_controlador.spawn_ativo = false; // PARAR SPAWN ✅
        }

        instance_destroy(); // destruir o inimigo ✅
    }
}


