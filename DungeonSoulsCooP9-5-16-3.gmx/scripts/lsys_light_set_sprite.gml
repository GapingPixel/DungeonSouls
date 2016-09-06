// lsys_light_set_sprite(ID, sprite);
gml_pragma("forceinline");
// Changes the light's sprite
global._lsys_light_sprite[argument0] = argument1;
global._lsys_light_changed[argument0] = true;
