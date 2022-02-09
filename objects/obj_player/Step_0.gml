// Configurando estados
switch (estado)
{
	case "slow":
		sprite_index = spr_player_slow;
		velocidade = 2;
		image_speed = .7;
		can_boost = false;
		energy_recharge = false;
		fire_state = "slow_fire";
		if (alarm[0] = -1)
		{
			alarm[0] = room_speed * 3;
		}
	break;
		
	case "normal":
		fire_state = fire_rate
		sprite_index = spr_player;
		can_boost = true;
		velocidade = 6;
		image_speed = 1;
	break;
		
	case "turbo":
		sprite_index = spr_player;
		velocidade = 9;
		image_speed = 1.7;
	break;
	
	case "dizzy":
		dizzy = true
		sprite_index = spr_player_dizzy;
		if (alarm[1] = -1)
		{
			alarm[1] = room_speed * 3;
		}
	break;
}

// Rodando a funcao de level up do tiro
fire_rate_level_up();

// Rodando a funcao boost
boost();

// Rodando a funcao movimentacao
movimentacao();

// Rodando a funcao atirando
atirando();

if (global.vida <= 0)
{
	game_restart();
}