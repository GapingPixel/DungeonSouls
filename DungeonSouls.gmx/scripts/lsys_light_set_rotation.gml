// lsys_light_set_rotation(ID, angle);
gml_pragma("forceinline");
// Changes the light's rotation
global._lsys_light_rot[argument0] = argument1;
global._lsys_light_changed[argument0] = true;
