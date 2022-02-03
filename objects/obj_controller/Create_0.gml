// Geração procedural dos inimigos
alarm[0] = room_speed * 1

// Iniciando o sistema de pontos
pontos = 0;

// Iniciando o level
level = 1;

// Upando de level
level_up = 100;

// Iniciando a função de ganhar pontos
///@method ganhar_pontos(pontos)
ganhar_pontos = function(_pontos)
{
	pontos += _pontos;
	
	if (pontos > level_up)
	{
		level++;
		level_up *= 2;
	}
}