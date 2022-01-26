// Inherit the parent event
event_inherited();

speed = 6;

if (instance_exists(obj_player))
{
	// Direcionando o tiro para a posicao do player
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	// Acertando a direção do tiro
	image_angle = direction + 90;
}