vspeed = 3;

alarm[0] = room_speed * random_range(1, 2);

// Criando funcao de atirando
atirando = function()
{
	if (y > 0 )
	{
		instance_create_layer(x - 3, y + sprite_height/2, "inst_inimigos", obj_tiro_inimigo_1);
	}
}

// Criando pontos
meu_ponto = 10;
