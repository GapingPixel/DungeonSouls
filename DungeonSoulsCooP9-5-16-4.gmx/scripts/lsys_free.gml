// lsys_free
gml_pragma("forceinline");
// Frees all surfaces, lights and casters
// Use this on room change or game end
var i;

//for (i = 0; i < global._lsys_lights; i += 1)
for (i = global._lsys_lights-1; i >= 0; i--)
{
    surface_free(global._lsys_light_surface[i]);
}
surface_free(global._lsys_surface);
global._lsys_lights = 0;
global._lsys_casters = 0;
