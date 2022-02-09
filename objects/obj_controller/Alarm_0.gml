// Geração procedural dos inimigos
var tempo_inimigo = 1;
// Se não existir inimigos na tela
if (!instance_exists(obj_inimigo_1) and !instance_exists(obj_inimigo_2))
{
	switch (level)
	{
		case 1:
			repeat(5)
			{
				criar_inimigo();
				//var tempo_inimigo = 1;
				show_debug_message("Criou 5");
			}
		break;
		
		case 2:
			repeat(10)
			{
				criar_inimigo();
				//var tempo_inimigo = 3;
				show_debug_message("Criou 10");
			}
		break;
			
		case 3:
			repeat(15)
			{
				criar_inimigo();
				//var tempo_inimigo = 5;
				show_debug_message("Criou 15");
			}
		break;
			
		case 4:
			repeat(20)
			{
				criar_inimigo();
				//var tempo_inimigo = 8;
				show_debug_message("Criou 20");
			}
		break;
			
		case 5:
			repeat(35)
			{
				criar_inimigo();
				//var tempo_inimigo = 10;
				show_debug_message("Criou 30");
			}
		break;
		
		default:
			repeat(40)
			{
				criar_inimigo();
				//var tempo_inimigo = 10;
				show_debug_message("Criou 40");
			}
		break;	
		
		
	}
}

// Reiniciando o alarme
alarm[0] = room_speed * tempo_inimigo;
