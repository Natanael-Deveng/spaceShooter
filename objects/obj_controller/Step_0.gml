// Pegando o id das layers
var background_id = layer_get_id("Background");
var efeito_fundo = layer_get_id("Background_efeito");
var efeito_fundo_2 = layer_get_id("Background_efeito_2");

// Fazendo o background se mover
layer_vspeed(background_id, .5);
layer_vspeed(efeito_fundo, 1);
layer_vspeed(efeito_fundo_2, 1.5);