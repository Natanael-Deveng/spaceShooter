// Iniciando a vida
global.vida = 3000;

// Iniciando energia
energy = 10;
energy_recharge = false;
turbo = false;

// Criando a funcao movimentacao
movimentacao = function()
{
	switch (turbo)
	{
		case false:
			velocidade = 6;
			image_speed = 1;
			break;
			
		case true:
			velocidade = 9;
			image_speed = 1.7;
			break;
	}
	
	_up = keyboard_check(ord("W"));
	_down = keyboard_check(ord("S"));
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	fire = keyboard_check(vk_space);
	
	velv = _down - _up;
	velh = _right - _left;
		
	x += velh * velocidade;	
	y += velv * velocidade;
	
	x = clamp(x, 64, 1856);
	y = clamp(y, 64, 1024);
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

// Criando a funcao de boost
boost = function()
{
	if (keyboard_check(vk_shift) and energy > 0)
	{
		energy_recharge = false;
		turbo = true;
		energy-= .1;
	}
	
	if (keyboard_check_released(vk_shift))
	{
		energy_recharge = true;
		turbo = false;
	}
	
	if (energy_recharge == true)
	{
		energy += .1;
		if (energy >= 10)
		{
			energy_recharge = false;
		}
	}
	
	if (energy <= 0)
	{
		turbo = false;
	}
}

// Criando o cooldown do tiro
cooldown = 0;