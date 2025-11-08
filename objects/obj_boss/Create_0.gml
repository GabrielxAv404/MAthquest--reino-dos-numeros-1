/// Create Event - obj_boss

estado = "esperando"; // pode ser "esperando" ou "atacando"
ataque_timer = room_speed * irandom_range(3, 6);
ataque_em_andamento = false;
ataque_tipo = 0;

vida = 10;
sprite_normal = sprite_index;
image_alpha = 1;

show_debug_message("Boss pronto para atacar.");
