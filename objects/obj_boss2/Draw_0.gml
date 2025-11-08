// Efeito de tremor
var cam_x = 0;
var cam_y = 0;

if (tremor_tempo > 0) {
    cam_x = irandom_range(-tremor_intensidade, tremor_intensidade);
    cam_y = irandom_range(-tremor_intensidade, tremor_intensidade);
}

// Desenha o boss com deslocamento
draw_sprite(sprite_index, image_index, x + cam_x, y + cam_y);
