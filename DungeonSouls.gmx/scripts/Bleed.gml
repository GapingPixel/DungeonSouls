///Bleed(bleed owner, bleed damage, bleed sec, bleed duration);
obj            = instance_create( x,y,obj_St_Bleed );
obj.owner      = argument0;
obj.damage     = argument1;
obj.sec        = 60*argument2;
obj.dur        = 60*argument3;
obj.alarm[0]   = obj.sec;
obj.alarm[1]   = obj.dur;
