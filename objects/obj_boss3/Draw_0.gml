// Desenha o boss com leve vibração e barra de vida

draw_self();

// Barra de vida
var largura = 200;
var altura = 15;
var x_barra = x - largura / 2;
var y_barra = y - sprite_height / 2 - 40;

draw_set_color(c_black);
draw_rectangle(x_barra - 2, y_barra - 2, x_barra + largura + 2, y_barra + altura + 2, false);

draw_set_color(c_red);
draw_rectangle(x_barra, y_barra, x_barra + (vida / 12) * largura, y_barra + altura, false);

draw_set_color(c_white);
draw_text(x, y_barra - 15, "BOSS FINAL");
