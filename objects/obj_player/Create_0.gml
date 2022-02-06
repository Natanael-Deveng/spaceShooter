// Iniciando a vida
global.vida = 3000;

// Iniciando a velocidade
velocidade = 6;

// Criando o cooldown do tiro
cooldown = 0;
fire_rate = "normalfire";

// Iniciando state machine
estado = "normal";

// Iniciando energia e boost
can_boost = true;
energy = 10;
energy_recharge = false;

// Criando a funcao movimentacao
movimentacao = function()
{		
	_up = keyboard_check(ord("W"));
	_down = keyboard_check(ord("S"));
	_left = keyboard_check(ord("A"));
	_right = keyboard_check(ord("D"));
	
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
	fire = keyboard_check(vk_space);
	
	if (fire and cooldown <= 0)
	{
		instance_create_layer(x, (y - sprite_height/2), "inst_player", obj_tiro_player);
		cooldown = 15;
	}
}

// Criando a funcao de boost
boost = function()
{
	if (keyboard_check(vk_shift) and energy > 0 and can_boost == true)
	{
		energy_recharge = false;
		estado = "turbo";
		energy-= .1;
	}
	
	if (keyboard_check_released(vk_shift) and can_boost == true)
	{
		energy_recharge = true;
		estado = "normal";
	}
	
	if (energy_recharge == true and energy <= 10)
	{
		energy += .1;
		if (energy >= 10)
		{
			energy_recharge = false;
		}
	}
	
	if (energy <= 0)
	{
		estado = "normal";
	}
}
