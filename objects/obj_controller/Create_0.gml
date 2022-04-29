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
	var y_inimigo_1 = irandom_range(-1500, -128);

	// Alocando o inimigo_1 em uma variável local
	var inimigo = obj_inimigo_1;

	// Criando um inimigo proceduralmente com base no level
	var chance = irandom_range(0, level);
	
	switch (chance)
	{
		case 0:
			var inimigo = obj_inimigo_1;
		break;
		
		case 1:
			var inimigo = obj_inimigo_1;
		break;
		
		case 2:
			var inimigo = obj_inimigo_2;
		break;
		
		case 3:
			var inimigo = obj_inimigo_3;
		break;
		
		case 4:
			var inimigo = obj_inimigo_5;
		break;
			
		case 5:
			var inimigo = obj_inimigo_4;
		break;
		
		default:
			var inimigo = choose(obj_inimigo_1, obj_inimigo_2, obj_inimigo_3, obj_inimigo_4, obj_inimigo_5);
		break;			
	}
	
	// Gerando os inimigos proceduralmente
	instance_create_layer(x_inimigo_1, y_inimigo_1, "inst_inimigos", inimigo);
}