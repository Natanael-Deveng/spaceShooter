draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.3, image_yscale * 1.3, image_angle, cores_2, 0.5)
draw_sprite_ext(spr_brilho_tiro_inimigo, image_index, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, cores_2, 0.3)
gpu_set_blendmode(bm_normal);