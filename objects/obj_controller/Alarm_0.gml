// Geração procedural dos inimigos
randomize();
x_inimigo_1 = irandom_range(33, 1887);
y_inimigo_1 = irandom_range(-800, -128);
tempo_inimigo_1 = irandom_range(1, 2);
instance_create_layer(x_inimigo_1, y_inimigo_1, "inst_inimigos", obj_inimigo_1);
alarm[0] = room_speed * tempo_inimigo_1;