// lsys_light_delete(ID);
gml_pragma("forceinline");
// Deactivates the light to be overwritten by new light
var a0 = argument0;
global._lsys_light_deleted[a0] = true;
surface_free(global._lsys_light_surface[a0]);
global._lsys_light_surface[a0] = -1;
