// Rodando a funcao movimentacao
movimentacao();

// Criando o tiro
cooldown -= 1;
if (fire and cooldown <= 0)
{
	instance_create_layer(obj_player.x, (obj_player.y - 60), "inst_player", obj_tiro_player);
	cooldown = 15;
}