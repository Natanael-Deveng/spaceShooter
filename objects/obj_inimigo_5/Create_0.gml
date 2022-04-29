// Inherit the parent event
event_inherited();

// Fzendo o inimigo atirar
atirando = function()
{
	if (y > 0 )
	{
		instance_create_layer(x, y + sprite_height/2, "inst_inimigos", obj_tiro_inimigo_5);
	}
}

// Criando pontos
meu_ponto = 25;

