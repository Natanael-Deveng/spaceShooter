// Inherit the parent event
event_inherited();

// Velocidade do inimigo
vspeed = 2;

// Fzendo o inimigo atirar
atirando = function()
{
	if (y > 0 )
	{
		instance_create_layer(x, y + sprite_height/2, "inst_inimigos", obj_tiro_inimigo_3);
	}
}

// Criando pontos
meu_ponto = 15;

