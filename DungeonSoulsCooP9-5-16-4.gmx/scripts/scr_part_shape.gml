///scr_part_shape(shape,alpha,life,direction,blend)
gml_pragma("forceinline");
part_system_depth(global.part_sys,-y);
// Particle Settings
var part = part_type_create();
part_type_shape(part, argument0);
part_type_alpha2(part,argument1,0);
part_type_life(part,room_speed*argument2,room_speed*argument2);
part_type_orientation(part, argument3,argument3,0,0,0);
if (argument4) then part_type_colour1(part,argument4);
part_particles_create(global.part_sys,x,y,part,1);
