// lsys_light_set_position(ID, x, y);
gml_pragma("forceinline");
a0 = argument0;
// Changes the light's position
global._lsys_light_xpos[a0] = argument1 * global._lsys_quality;
global._lsys_light_ypos[a0] = argument2 * global._lsys_quality;
global._lsys_light_changed[a0] = true;
