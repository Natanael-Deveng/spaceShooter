// Mantendo o desenho da sprite
draw_self();

// Desenho a sprite do brilho por cima da sprite
// Fazendo a placa de vídeo misturar as cores apenas nesse desenho
gpu_set_blendmode(bm_add);
draw_sprite_ext(brilho, image_index, x, y, image_xscale * 0.7, image_yscale * 0.6, image_angle, cores_1, 0.5);
gpu_set_blendmode(bm_normal);
