if (instance_exists(obj_player))
{
	draw_set_color(c_white);
	draw_text_transformed(10, 10, global.vida, 2, 2, 0);
	draw_text_transformed(10, 40, obj_player.energy, 2, 2, 0);
	draw_text_transformed(10, 70, obj_player.velocidade, 2, 2, 0);
	draw_set_color(-1);
}