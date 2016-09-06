///spawn_lightning_position(sourcex,sourcey,targetx,targety,animation_speed,min_range,max_range,continuous,col1,col2)
gml_pragma("forceinline");
var ob = instance_create(mouse_x,mouse_y,obj_Chain_Lightning);
ob.sourcex=argument0;
ob.sourcey=argument1;
ob.targetx=argument2;
ob.targety=argument3;
ob.animation_speed=argument4;
ob.min_range=argument5;
ob.max_range=argument6;
ob.continuous=argument7;
ob.col1=argument8;
ob.col2=argument9;
