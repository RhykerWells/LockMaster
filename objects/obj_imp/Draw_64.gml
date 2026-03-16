var draw_x = 30;
var draw_y = 320;

draw_sprite_ext(spr_moves_box, 0, draw_x, draw_y, 4, 4, 0, c_white, 1);

draw_set_font(font_moves);
draw_text(draw_x + 230, draw_y + 50, string(moves));