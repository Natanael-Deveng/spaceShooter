// Inherit the parent event
event_inherited();

// Criando estado
posicao = "none";

if (x <= room_width/2)
{
	posicao = "esquerda";
}
else
{
	posicao = "direita";
}

// Fzendo o inimigo atirar
atirando = function()
{
	if (y > 0 )
	{
		instance_create_layer(x, y + sprite_height/2, "inst_inimigos", obj_tiro_inimigo_2);
	}
}