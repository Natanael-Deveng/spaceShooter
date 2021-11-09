// Rodando a funcao movimentacao
movimentacao();

// Criando o tiro
cooldown -= 1;
if (fire and cooldown <= 0)
{
	instance_create_layer(x, (y - sprite_height/2), "inst_player", obj_tiro_player);
	cooldown = 15;
}