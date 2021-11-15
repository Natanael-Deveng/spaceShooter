// Iniciando a vida
global.vida = 3;

// Criando a funcao movimentacao
movimentacao = function()
{
	velocidade = 7
	_up = keyboard_check(ord("W"));
	_down = keyboard_check(ord("S"));
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	fire = keyboard_check(vk_space);
	
	velv = _down - _up;
	velh = _right - _left;
	
	// Colisao horizontal
	if (place_meeting(x + velh, y, obj_colisor))
	{
		while (!place_meeting(x + sign(velh), y, obj_colisor))
		{
			x += sign(velh);
		}
		velh = 0;
	}
	
	x += velh * velocidade;
	
	// Colisao vertical
	if (place_meeting(x, y + velv, obj_colisor))
	{
		while (!place_meeting(x, y + sign(velv), obj_colisor))
		{
			y += sign(velv);
		}
		velv = 0;
	}
	
	y += velv * velocidade;
}

// Criando a funcao de tiro
atirando = function()
{
	cooldown -= 1;
	if (fire and cooldown <= 0)
	{
		instance_create_layer(x, (y - sprite_height/2), "inst_player", obj_tiro_player);
		cooldown = 15;
	}
}

// Criando o cooldown do tiro
cooldown = 0;