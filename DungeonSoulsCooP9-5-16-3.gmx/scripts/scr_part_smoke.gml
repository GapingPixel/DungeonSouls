///scr_part_smoke(repeat,dir,life,spd,depth,size,colour,orientation,alpha);
gml_pragma("forceinline");

var dir = random(argument1);
var life = argument2*room_speed;
var spd = argument3+random(argument3);
var size = (argument5/5)*1;
var orientation = argument7;
var alpha = argument8;
       
// Particle Type
var part = part_type_create();
part_system_depth(global.part_sys,argument4);
part_type_sprite(part, spr_Smoke,true,true,true);
part_type_direction(part,dir,dir,0,0);
part_type_life(part,life,life);
part_type_speed(part,spd,spd,-0.2,0);
part_type_size(part,size,size,-0.015,0);
if (argument6) then part_type_colour1(part,argument6);
part_type_orientation(part,orientation,orientation,irandom_range(-5,5),0,true);
part_type_alpha2(part,alpha,.1);
part_particles_create(global.part_sys,x,y,part,argument0);

