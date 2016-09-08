///Spawn(x,y,object)
gml_pragma("forceinline");
obj = instance_create(argument0,argument1,obj_Spawn) 
obj.object = argument2;
