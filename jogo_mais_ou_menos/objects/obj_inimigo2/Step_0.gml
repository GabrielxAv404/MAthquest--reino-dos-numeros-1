y+=vel  // Pode mudar para mais vidas
if (global.vida<=0){
	room_restart()}
// Se sair da tela → destrói e conta como eliminado
if (y > room_height) {
    instance_destroy();
		 global.vida-=1
}

var ctrl = obj_controlador;

// Só testa se tiver número digitado
if (ctrl.numero_digitado != "") {
    
    // Converte texto para número (aceita negativos)
    var valor = real(ctrl.numero_digitado);

    if (valor == resultado) {

        vida -= 1;
        ctrl.numero_digitado = "";

        // Se ainda tem vida → gerar nova conta
        if (vida > 0) {
            numero1 = irandom_range(5, 15);
            numero2 = irandom_range(1, numero1);
            resultado = numero1 - numero2;
        }
        // Se morrer → explode em 2 pequenos
        else {

            ctrl.inimigos_derrotados += 1;
            instance_destroy();
        }
    }
}
