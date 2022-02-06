if(instance_exists(obj_controller))
{
	obj_controller.ganhar_pontos(meu_ponto);
}	

// Animacao de explosao
instance_create_layer(x, y, "inst_inimigos", obj_impacto_inimigo);