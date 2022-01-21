// Desenhando a sprite
draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_tiro_inimigo, image_index, x, y, image_xscale * 0.7, image_yscale * 0.6, image_angle, cores_2, .45);
gpu_set_blendmode(bm_normal);

