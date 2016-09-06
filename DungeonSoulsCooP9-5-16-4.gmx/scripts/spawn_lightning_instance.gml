///spawn_lightning_instance(id_source,id_target,animation_speed,min_range,max_range,continuous,col1,col2)
gml_pragma("forceinline");
var ob = instance_create(mouse_x,mouse_y,obj_Chain_Lightning);
ob.source=argument0;
ob.target=argument1;
ob.animation_speed=argument2;
ob.min_range=argument3;
ob.max_range=argument4;
ob.continuous=argument5;
ob.col1=argument6;
ob.col2=argument7;
