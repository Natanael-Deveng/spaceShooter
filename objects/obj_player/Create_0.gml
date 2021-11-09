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
	
	x += velh * velocidade;
	y += velv * velocidade;
}

// Criando o cooldown do tiro
cooldown = 0;