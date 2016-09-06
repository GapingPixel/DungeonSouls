// lsys_light_set_color(ID, color);
gml_pragma("forceinline");
// Changes the color of the light
global._lsys_light_color[argument0] = argument1;
global._lsys_light_changed[argument0] = true;
