//Herdando evento step do pai
event_inherited();

// Checando se estou em 1/4 da altura da tela
if (y >= room_height/4)
{
	// Checando se estou na direita ou esquerda da sala
	if (posicao == "esquerda")
	{
		hspeed = 3;
	}
	else if (posicao == "direita")
	{
		hspeed = -3;
	}
}