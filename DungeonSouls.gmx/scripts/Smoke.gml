///Smoke(amount,speed,direction,depth,friction,color,radius);

/*global.part_sys = part_system_create();
part_system_depth(global.part_sys,argument3);
part_system_automatic_update(global.part_sys,true);

part = part_type_create();
part_type_sprite(part,spr_Smoke,false,false,true);
part_type_scale(part,(argument6/5)*1,(argument6/5)*1);
part_type_speed(part,random(argument1),argument1,false,false);
part_type_direction(part,0,random(argument2),false,false);
part_type_orientation(part,0,360,true,false,true);
part_type_colour2(part,argument5,c_dkgray);
part_type_life(part,50,100);

emitter = part_emitter_create(global.part_sys);
part_emitter_region(global.part_sys,emitter,x,x,y,y,ps_shape_rectangle,ps_distr_gaussian);
part_emitter_burst(global.part_sys,emitter,part,argument0);*/
repeat(argument0)
{
        randomize();
        obj = instance_create(x,y,obj_Smoke);
        obj.speed = argument1+random(argument1);
        obj.direction = random(argument2);
        obj.depth = argument3;
        obj.friction = argument4;
        obj.col = argument5;
        obj.rad = argument6;  
        obj.image_xscale = (obj.rad/5)*1;
        obj.image_yscale = obj.image_xscale;
        obj.image_blend = obj.col;
        obj.image_alpha = obj.alpha;
}
