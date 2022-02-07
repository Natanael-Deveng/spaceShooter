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

// Criando um método que gera inimigos
criar_inimigo = function()
{
	// Randomizando a geração dos inimigos
	randomize();

	// Alocando as posições aleatórias de x e y em uma variável local
	var x_inimigo_1 = irandom_range(33, 1887);
	var y_inimigo_1 = irandom_range(-800, -128);

	// Alocando o inimigo_1 em uma variável local
	var inimigo = obj_inimigo_1;

	// Criando um inimigo proceduralmente com base no level
	var chance = irandom_range(0, level);

	if (chance = 2)
	{
		var inimigo = obj_inimigo_2;
	}
	else if (chance = 3)
	{
		var inimigo = obj_inimigo_3;
	}
	else if (chance = 4)
	{
		var inimigo = obj_inimigo_5;
	}
	else if (chance = 5)
	{
		var inimigo = obj_inimigo_4;
	}

	// Gerando os inimigos proceduralmente
	instance_create_layer(x_inimigo_1, y_inimigo_1, "inst_inimigos", inimigo);
}