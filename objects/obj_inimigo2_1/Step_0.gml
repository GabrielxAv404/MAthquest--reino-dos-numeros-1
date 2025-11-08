y+=vel  // Pode mudar para mais vidas
if (global.vida<=0){
	room_restart()}
// Se sair da tela → destrói e conta como eliminado
if (y > room_height) {
    instance_destroy();
		 global.vida-=1
}
var ctrl = obj_controlador;

if (ctrl.numero_digitado != "") {
    if (real(ctrl.numero_digitado) == resultado) {

        ctrl.inimigos_derrotados += 1;
        ctrl.numero_digitado = "";

        instance_destroy();
    }
}
